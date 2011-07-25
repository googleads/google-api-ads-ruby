#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# Registry object for Savon backend. Used on generation step as parsed
# representation of WSDL for API stubs generation.

require 'savon'
require 'rexml/document'

module AdsCommon
  module Build
    # Contains the methods that extracts WSDL data.
    class SavonRegistry
      attr_reader :soap_exceptions
      attr_reader :soap_methods
      attr_reader :soap_types
      attr_reader :soap_namespaces

      # Initializes the instance.
      #
      # Args:
      # - wsdl: string containing wsdl to parse
      # - options: variuos generation options
      #
      def initialize(wsdl, options = {})
        @options = options
        @default_namespace = options[:namespace]
        do_process_wsdl(wsdl)
      end

      private

      # Generate code for given Savon client.
      def do_process_wsdl(wsdl)
        @soap_exceptions = []
        @soap_types = []
        @soap_methods = []
        @soap_namespaces = []

        doc = REXML::Document.new(wsdl.xml)
        process_types(doc)
        process_methods(doc)
        sort_exceptions()
      end

      # Extracts different types from XML.
      def process_types(doc)
        REXML::XPath.each(doc, '//schema') do |schema|
          ns_index = process_namespace(schema)
          get_complex_types(schema).each do |ctype|
            ctype_name = get_element_name(ctype)
            if ctype_name.match('.+Exception$')
              @soap_exceptions << extract_exception(ctype)
            elsif ctype_name.match('.+Error$')
              # We don't use it at the moment.
            else
              @soap_types << extract_type(ctype, ns_index)
            end
          end
        end
      end

      # Returns index of namespace for given schema. Adds namespace to internal
      # array if not yet present. Returns nil for service default namespace.
      def process_namespace(schema)
        namespace_url = schema.attribute('targetNamespace').value
        unless namespace_url == @default_namespace
          ns_index = @soap_namespaces.index(namespace_url)
          if ns_index.nil?
            ns_index = @soap_namespaces.length
            @soap_namespaces << namespace_url
          end
          return ns_index
        end
        return nil
      end

      # Extracts SOAP actions as methods.
      def process_methods(doc)
        iface = REXML::XPath.first(doc, 'descendant::wsdl:portType')
        REXML::XPath.each(iface, 'descendant::wsdl:operation') do |operation|
          @soap_methods << extract_method(operation, doc)
        end
      end

      # Extracts ComplexTypes from node into an array.
      def get_complex_types(node)
        return REXML::XPath.each(node, 'complexType').to_a
      end

      # Extracts exception parameters from ComplexTypes element.
      def extract_exception(exception_element)
        return {:name => get_element_name(exception_element),
                :doc => get_element_doc(exception_element),
                :base => get_element_base(exception_element),
                :fields => get_element_fields(exception_element)}
      end

      # Extracts method parameters from ComplexTypes element.
      def extract_method(method_element, doc)
        name = get_element_name(method_element)
        method = {
            :name => name.snakecase,
            :input => extract_input_parameters(method_element, doc),
            :output => extract_output_parameters(method_element, doc)
            # This could be used to include documentation from wsdl.
            #:doc => get_element_doc(operation, 'wsdl')
        }
        original_name = (name.snakecase.lower_camelcase == name)? nil : name
        method[:original_name] = original_name unless original_name.nil?
        return method
      end

      # Extracts definition of all types. If a non standard undefined type is
      # found it process it recursively.
      def extract_type(type_element, ns_index)
        type = {:name => get_element_name(type_element), :fields => []}
        if attribute_to_boolean(type_element.attribute('abstract'))
          type[:abstract] = true
        end
        base_type = get_element_base(type_element)
        type[:base] = base_type if base_type
        type[:ns] = ns_index if ns_index
        REXML::XPath.each(type_element,
            'sequence | complexContent/extension/sequence') do |seq_node|
          type[:fields] += get_element_fields(seq_node)
        end
        return type
      end

      # Extracts input parameters of given method as an array.
      def extract_input_parameters(op_node, doc)
        op_name = get_element_name(op_node)
        return find_sequence_fields(op_name, doc)
      end

      # Extracts output parameter name and fields.
      def extract_output_parameters(op_node, doc)
        output_element = REXML::XPath.first(op_node, 'descendant::wsdl:output')
        output_name = get_element_name(output_element)
        output_fields = find_sequence_fields(output_name, doc)
        return {:name => output_name.snakecase, :fields => output_fields}
      end

      # Finds sequence fields for the element of given name.
      def find_sequence_fields(name, doc)
        result = []
        doc.each_element_with_attribute('name', name, 0,
            '//schema/element') do |element_node|
          REXML::XPath.each(element_node, 'complexType/sequence') do |seq_node|
            result += get_element_fields(seq_node)
          end
        end
        return result
      end

      # Gets element name defined as its attribute.
      def get_element_name(element)
        return element.attribute('name').to_s
      end

      # Gets element base defined as an attribute in sibling.
      def get_element_base(element)
        base_element = REXML::XPath.first(element, 'complexContent/extension')
        base = (base_element.nil?) ? nil :
            base_element.attribute('base').to_s.gsub(/^.+:/, '')
        return base
      end

      # Gets element documentation text.
      def get_element_doc(root, namespace = nil)
        key = 'documentation'
        key = "%s:%s" % [namespace, key] if namespace
        doc_element = REXML::XPath.first(root, "descendant::%s" % key)
        doc = (doc_element.nil?) ? '' :
            REXML::Text.unnormalize(doc_element.get_text.to_s)
        return doc
      end

      # Gets subfields defined as elements under given root.
      def get_element_fields(element)
        fields = []
        REXML::XPath.each(element, 'descendant::element') do |item|
          field = {:name => get_element_name(item).snakecase.to_sym,
              :type => item.attribute('type').to_s.gsub(/^.+:/, ''),
              :min_occurs => attribute_to_int(item.attribute('minOccurs')),
              :max_occurs => attribute_to_int(item.attribute('maxOccurs'))}
          fields << field.reject {|k, v| v.nil?}
        end
        return fields
      end

      # Simple converter for int values.
      def attribute_to_int(attribute)
        return nil if attribute.nil?
        return attribute.value.eql?('unbounded') ?
            :unbounded : attribute.value.to_i
      end

      # Simple converter for boolean values.
      def attribute_to_boolean(attribute)
        return (attribute.nil?) ? nil : attribute.value.eql?('true')
      end

      # Reorders exceptions so that base ones always come before derived.
      def sort_exceptions()
        @ordered_exceptions = []
        @soap_exceptions.each {|exception| do_include_exception(exception)}
        @soap_exceptions = @ordered_exceptions
      end

      # Includes exception into ordered_exceptions if not already there and
      # makes sure its base is already included.
      def do_include_exception(exception)
        return if find_exception(exception, @ordered_exceptions)
        if exception[:base].nil?
          @ordered_exceptions.push(exception)
        else
          base = find_exception(exception[:base], @soap_exceptions)
          do_include_exception(base)
          @ordered_exceptions.push(exception)
        end
      end

      # Finds object (exception) by name attribute in a list.
      def find_exception(exception, list)
        list.each do |e|
          return e if (e.eql?(exception) || e[:name].eql?(exception))
        end
        return nil
      end
    end
  end
end
