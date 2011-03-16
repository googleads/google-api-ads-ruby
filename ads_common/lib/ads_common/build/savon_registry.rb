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
    STANDARD_TYPES = ['long', 'boolean', 'int', 'string', 'double']

    # Contains the methods that extracts WSDL data.
    class SavonRegistry
      attr_reader :soap_exceptions
      attr_reader :soap_methods
      attr_reader :soap_types

      # Initializes the instance.
      # Args:
      #   wsdl - string containing wsdl to parse.
      def initialize(wsdl)
        do_process_wsdl(wsdl)
      end

      private

      # Generate code for given Savon client.
      def do_process_wsdl(wsdl)
        doc = REXML::Document.new(wsdl.to_xml)
        @raw_types = []
        @soap_exceptions = extract_exceptions(doc)
        sort_exceptions()
        @soap_methods = extract_methods(doc)
        @soap_types = extract_types(doc)
      end

      # Extracts exceptions list with basic properties from ComplexTypes list.
      def extract_exceptions(doc)
        exceptions = []
        ctypes = get_complex_types(doc)
        raw_exceptions = exceptions_from_ctypes(ctypes)
        raw_exceptions.each do |raw_exception|
          exceptions << {:name => raw_exception.attributes['name'],
              :doc => get_element_doc(raw_exception),
              :base => get_element_base(raw_exception),
              :fields => get_element_fields(raw_exception)}
        end
        return exceptions
      end

      # Extracts ComplexTypes from XML into an array.
      def get_complex_types(doc)
        complex_types = []
        REXML::XPath.each(doc, '//schema/complexType') do |ctype|
          complex_types << ctype
        end
        return complex_types
      end

      # Helper function to find Exceptions (by name) from all types.
      def exceptions_from_ctypes(ctypes)
        exceptions = []
        ctypes.each do |ctype|
          if ctype.attributes['name'].match('.+Exception$')
            exceptions << ctype
          end
        end
        return exceptions
      end

      # Extracts methods and parameters from XML.
      def extract_methods(doc)
        methods = []
        iface = REXML::XPath.first(doc, 'descendant::wsdl:portType')
        REXML::XPath.each(iface, 'descendant::wsdl:operation') do |operation|
          methods << {:name => operation.attributes['name'].to_s.snakecase,
              :input => extract_input_parameters(operation, doc),
              :output => extract_output_parameters(operation, doc)}
          # This could be used to include documentation from wsdl.
          #    :doc => get_element_doc(operation, 'wsdl')}
        end
        return methods
      end

      # Extracts input parameters of given method as an array.
      def extract_input_parameters(op_node, doc)
        result = []
        op_name = op_node.attributes['name'].to_s
        doc.each_element_with_attribute('name', op_name, 0,
            '//schema/element') do |method_node|
          seq_node = REXML::XPath.first(method_node, 'complexType/sequence')
          result = get_element_fields(seq_node)
          process_method_field_types(result)
        end
        return result
      end

      # Extracts output parameter name and fields.
      def extract_output_parameters(op_node, doc)
        output_element = REXML::XPath.first(op_node, 'descendant::wsdl:output')
        output_name = (output_element.nil?) ? nil :
            output_element.attribute('name').to_s
        output_fields = []
        doc.each_element_with_attribute('name', output_name, 0,
            '//schema/element') do |response_node|
          seq_node = REXML::XPath.first(response_node, 'complexType/sequence')
          output_fields = get_element_fields(seq_node)
          process_method_field_types(output_fields)
        end
        result = {:name => output_name.snakecase, :fields => output_fields}
        return result
      end

      # Checks all fields are of standard type or included in raw_types.
      def process_method_field_types(fields)
        fields.each do |field|
          field_type = field[:type]
          next if STANDARD_TYPES.include?(field_type)
          @raw_types << field_type unless @raw_types.include?(field_type)
        end
      end

      # Gets element base defined as an attribute in sibling.
      def get_element_base(root)
        base_element = REXML::XPath.first(root, 'complexContent/extension')
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
      def get_element_fields(root)
        fields = []
        REXML::XPath.each(root, 'descendant::element') do |element|
          fields << {:name => element.attribute('name').to_s.snakecase,
              :type => element.attribute('type').to_s.gsub(/^.+:/, ''),
              :min_occurs => attribute_to_int(element.attribute('minOccurs')),
              :max_occurs => attribute_to_int(element.attribute('maxOccurs'))}
        end
        return fields
      end

      # Extracts definition of all types. If a non standard undefined type is
      # found it process it recursively.
      # Special case for extensions - types with a base class.
      def extract_types(doc)
        types = []
        @raw_types.each do |raw_type|
          doc.each_element_with_attribute('name', raw_type, 0,
              '//schema/complexType') do |type_node|
            type = {:name => raw_type, :fields => []}
            ext_node = REXML::XPath.first(type_node, 'complexContent/extension')
            if ext_node
              base_type = ext_node.attribute('base').to_s.gsub(/^.+:/, '')
              type[:base] = base_type
              @raw_types << base_type unless @raw_types.include?(base_type)
              seq_node = REXML::XPath.first(ext_node, 'sequence')
              fields = get_element_fields(seq_node)
              process_method_field_types(fields)
              type[:fields] += fields
            end
            seq_node = REXML::XPath.first(type_node, 'sequence')
            if seq_node
              fields = get_element_fields(seq_node)
              process_method_field_types(fields)
              type[:fields] += fields
            end
            types << type
          end
        end
        return types
      end

      # Simple converter for int values.
      def attribute_to_int(attribute)
        return attribute.value.eql?('unbounded') ? nil : attribute.value.to_i
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
