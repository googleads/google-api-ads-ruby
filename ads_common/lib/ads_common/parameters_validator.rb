# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This class validates input parameters before passing them to Savon.

require 'ads_common/utils'

module AdsCommon
  class ParametersValidator
    # Savon special keys.
    IGNORED_HASH_KEYS = [:order!, :attributes!]

    # We collect required namespaces into this hash during validation.
    attr_reader :extra_namespaces

    # Instance initializer.
    #
    # Args:
    #  - registry: a registry that defines service
    #
    def initialize(registry)
      @registry = registry
      @extra_namespaces = {}
    end

    # Validates input parameters to:
    # - add parameter names;
    # - resolve xsi:type where required;
    # - convert some native types to XML.
    def validate_args(action_name, args)
      in_params = @registry.get_method_signature(action_name)[:input]
      # TODO: compare number of parameters.
      args_hash = in_params.each_with_index.inject({}) do
          |result, (in_param, index)|
        result.merge({in_param[:name] => deep_copy(args[index])})
      end
      validate_arguments(args_hash, in_params)
      return args_hash
    end

    private

    # Validates given arguments based on provided fields list.
    def validate_arguments(args_hash, fields_list, type_ns = nil)
      check_extra_fields(args_hash, array_from_named_list(fields_list))
      add_order_key(args_hash, fields_list)
      fields_list.each do |field|
        key = field[:name]
        item = args_hash[key]
        check_required_argument_present(item, field)
        unless item.nil?
          original_name = field[:original_name]
          if original_name
            key = handle_name_override(args_hash, key, original_name)
          end

          item_type = get_full_type_signature(field[:type])
          item_ns = field[:ns] || type_ns
          key = handle_namespace_override(args_hash, key, item_ns) if item_ns

          # Separate validation for choice types as we need to inject nodes into
          # the tree. Validate as usual if not a choice type.
          unless validate_choice_argument(item, args_hash, key, item_type)
            validate_arg(item, args_hash, key, item_type)
          end
        end
      end
      return args_hash
    end

    # Special handling for choice types. Goes over each item, checks xsi_type
    # is set and correct and injects new node for it into the tree. After that,
    # recurces with the correct item type.
    def validate_choice_argument(item, parent, key, item_type)
      result = false
      if item_type.kind_of?(Hash) && item_type.include?(:choices)
        # If we have an array of choices, we need to go over them individually.
        # We drop original array and replace it with the generated one that's
        # nested one level more.
        if item.kind_of?(Array)
          parent[key] = []
          item.each do |sub_item|
            unless validate_choice_argument(sub_item, parent, key, item_type)
              validate_arg(sub_item, parent, key, item_type)
            end
          end
          return true
        end
        # New root needed for extra nesting we have (choice field).
        new_root = {}
        choice_items = arrayize(item)
        choice_items.each do |choice_item|
          choice_type = choice_item.delete(:xsi_type)
          choice_item_type =
              find_choice_by_xsi_type(choice_type, item_type[:choices])
          if choice_type.nil? || choice_item_type.nil?
            raise AdsCommon::Errors::TypeMismatchError.new(
              'choice subtype', choice_type, choice_item.to_s())
          end
          choice_item[:xsi_type] = choice_type
          # Note we use original name that produces a string like
          # "BasicUserList". That's needed as the name is generated out of
          # standard naming ("basicUserList") which would otherwise be produced.
          choice_key = choice_item_type[:original_name]
          new_root[choice_key] = choice_item
          type_signature = get_full_type_signature(choice_type)
          validate_arg(choice_item, new_root, choice_key, type_signature)
        end
        if parent[key].kind_of?(Array)
          parent[key] << new_root
        else
          parent[key] = new_root
        end
        result = true
      end
      return result
    end

    def find_choice_by_xsi_type(xsi_type, item_def)
      return nil if xsi_type.nil?
      # Method may allow this class name or any of its ancestors.
      possible_names = collect_parent_types(xsi_type)
      index = item_def.index do |item|
        possible_names.include?(item[:original_name])
      end
      return index.nil? ? nil : item_def[index]
    end

    def collect_parent_types(xsi_type)
      result = [xsi_type]
      type_signature = @registry.get_type_signature(xsi_type)
      if !type_signature.nil? && !type_signature[:base].nil?
        result += collect_parent_types(type_signature[:base])
      end
      return result
    end

    # Checks if no extra fields provided outside of known ones.
    def check_extra_fields(args_hash, known_fields)
      extra_fields = args_hash.keys - known_fields - IGNORED_HASH_KEYS
      unless extra_fields.empty?
        raise AdsCommon::Errors::UnexpectedParametersError.new(extra_fields)
      end
    end

    # Generates order of XML elements for SOAP request. Adds :order! key to
    # keep the correct order.
    def add_order_key(args, fields_list)
      all_args = fields_list.map {|field| field[:name]}
      order_array = (all_args & args.keys)
      args[:order!] = order_array unless order_array.empty?
    end

    # Checks the provided data structure matches wsdl definition.
    def check_required_argument_present(arg, field)
      # At least one item required, none passed.
      if field[:min_occurs] > 0 and arg.nil?
        raise AdsCommon::Errors::MissingPropertyError.new(
            field[:name], field[:type])
      end
      # An object passed when an array is expected.
      if (field[:max_occurs] == :unbounded) and
          !(arg.nil? or arg.kind_of?(Array))
        raise AdsCommon::Errors::TypeMismatchError.new(
            Array, arg.class, field[:name])
      end
      # An array passed when an object is expected.
      if (field[:max_occurs] == 1) and arg.kind_of?(Array)
        raise AdsCommon::Errors::TypeMismatchError.new(
            field[:type], Array, field[:name])
      end
    end

    # Overrides non-standard name conversion.
    def handle_name_override(args, key, original_name)
      rename_hash_key(args, key, original_name)
      replace_array_item(args[:order!], key, original_name)
      return original_name
    end

    # Overrides non-default namespace if requested.
    def handle_namespace_override(args, key, ns)
      add_extra_namespace(ns)
      new_key = prefix_key_with_namespace(key.to_s.lower_camelcase, ns)
      rename_hash_key(args, key, new_key)
      replace_array_item(args[:order!], key, new_key)
      return new_key
    end

    # Validates single argument.
    def validate_arg(arg, parent, key, arg_type)
      result = case arg
        when Array
          validate_array_arg(arg, parent, key, arg_type)
        when Hash
          validate_hash_arg(arg, parent, key, arg_type)
        when Time
          arg = validate_time_arg(arg, parent, key)
          validate_hash_arg(arg, parent, key, arg_type)
        else
          arg
      end
      return result
    end

    # Validates Array argument.
    def validate_array_arg(arg, parent, key, arg_type)
      result = arg.map do |item|
        validate_arg(item, parent, key, arg_type)
      end
      return result
    end

    # Validates Hash argument.
    def validate_hash_arg(arg, parent, key, arg_type)
      arg_type = handle_xsi_type(arg, parent, key, arg_type)
      validate_arguments(arg, arg_type[:fields], arg_type[:ns])
    end

    # Validates Time argument.
    def validate_time_arg(arg, parent, key)
      xml_value = time_to_xml_hash(arg)
      parent[key] = xml_value
      return xml_value
    end

    # Handles custom xsi:type.
    def handle_xsi_type(arg, parent, key, arg_type)
      xsi_type = arg.delete('xsi:type') || arg.delete(:xsi_type)
      if xsi_type
        xsi_field_type = get_full_type_signature(xsi_type)
        if xsi_field_type.nil?
          raise AdsCommon::Errors::ApiException.new(
              "Incorrect xsi:type specified: '%s'" % [xsi_type])
        else
          # TODO: make sure xsi_type is derived from arg_type.
          arg_type = xsi_field_type
          # xsi:type needs to be from a correct namespace.
          if xsi_field_type[:ns]
            xsi_type = prefix_key_with_namespace(xsi_type, xsi_field_type[:ns])
          end
        end
        add_xsi_type(parent, key, xsi_type)
      end
      return arg_type
    end

    # Replaces an item in an array with a different one into the same position.
    def replace_array_item(data, old_item, new_item)
      data.map! {|item| (item == old_item) ? new_item : item}
    end

    # Replaces an item in an array with a different one into the same position.
    def rename_hash_key(data, old_key, new_key)
      data[new_key] = data.delete(old_key)
      return data
    end

    # Adds ":attributes!" record for Savon to specify xsi:type.
    def add_xsi_type(parent, key, xsi_type)
      add_attribute(parent, key, 'xsi:type', xsi_type)
    end

    # Adds Savon attribute for given node, key, name and value.
    def add_attribute(node, key, name, value)
      node[:attributes!] ||= {}
      node[:attributes!][key] ||= {}
      if node[:attributes!][key].include?(name)
        node[:attributes!][key][name] = arrayize(node[:attributes!][key][name])
        node[:attributes!][key][name] << value
      else
        node[:attributes!][key][name] = value
      end
    end

    # Prefixes a key with a given namespace index or default namespace.
    def prefix_key_with_namespace(key, ns_index = nil)
      namespace = (ns_index.nil?) ? DEFAULT_NAMESPACE : ("ns%d" % ns_index)
      return prefix_key(key, namespace)
    end

    # Prefixes with a given namespace.
    def prefix_key(key, ns)
      return [ns, key].join(':')
    end

    # Returns list of 'names' for objects in array.
    def array_from_named_list(fields_list)
      return fields_list.map {|field| field[:name]}
    end

    # Returns copy of object and its sub-objects ("deep" copy).
    def deep_copy(data)
      return Marshal.load(Marshal.dump(data))
    end

    # Returns type signature with all inherited fields.
    def get_full_type_signature(type_name)
      result = (type_name.nil?) ? nil : @registry.get_type_signature(type_name)
      result[:fields] = implode_parent(result) if result and result[:base]
      return result
    end

    # Returns all inherited fields of superclasses for given type.
    def implode_parent(data_type)
      result = []
      if data_type[:base]
        parent_type = @registry.get_type_signature(data_type[:base])
        result += implode_parent(parent_type)
      end
      data_type[:fields].each do |field|
        # If the parent type includes a field with the same name, overwrite it.
        result.reject! {|parent_field| parent_field[:name].eql?(field[:name])}
        # Storing field's namespace.
        field[:ns] = data_type[:ns] if data_type[:ns]
        result << field
      end
      return result
    end

    # Adds additional namespace for XML generation.
    def add_extra_namespace(ns_index)
      @extra_namespaces.merge!({
          "xmlns:ns%d" % ns_index => @registry.get_namespace(ns_index)
      })
    end

    # Makes sure object is an array.
    def arrayize(object)
      return [] if object.nil?
      return object.is_a?(Array) ? object : [object]
    end

    # Converts Time to a hash for XML marshalling.
    def time_to_xml_hash(time)
      return {
          :hour => time.hour, :minute => time.min, :second => time.sec,
          :date => {:year => time.year, :month => time.month, :day => time.day}
      }
    end
  end
end
