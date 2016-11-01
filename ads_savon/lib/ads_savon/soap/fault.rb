require "ads_savon/error"
require "ads_savon/soap/xml"

module GoogleAdsSavon
  module SOAP

    # = GoogleAdsSavon::SOAP::Fault
    #
    # Represents a SOAP fault. Contains the original <tt>HTTPI::Response</tt>.
    class Fault < Error

      # Expects an <tt>HTTPI::Response</tt>.
      def initialize(http)
        self.http = http
      end

      # Accessor for the <tt>HTTPI::Response</tt>.
      attr_accessor :http

      # Returns whether a SOAP fault is present.
      def present?
        @present ||= http.body.include?("Fault>") && (soap1_fault? || soap2_fault?)
      end

      # Returns the SOAP fault message.
      def to_s
        return "" unless present?
        @message ||= message_by_version to_hash[:fault]
      end

      # Returns the SOAP response body as a Hash.
      def to_hash
        @hash ||= nori.parse(http.body)[:envelope][:body]
      end

      private

      # Returns whether the response contains a SOAP 1.1 fault.
      def soap1_fault?
        http.body.include?("faultcode>") && http.body.include?("faultstring>")
      end

      # Returns whether the response contains a SOAP 1.2 fault.
      def soap2_fault?
        http.body.include?("Code>") && http.body.include?("Reason>")
      end

      # Returns the SOAP fault message by version.
      def message_by_version(fault)
        if fault[:faultcode]
          "(#{fault[:faultcode]}) #{fault[:faultstring]}"
        elsif fault[:code]
          "(#{fault[:code][:value]}) #{fault[:reason][:text]}"
        end
      end

      def nori
        return @nori if @nori

        nori_options = {
          :strip_namespaces      => true,
          :convert_tags_to       => lambda { |tag| tag.snakecase.to_sym },
          :empty_tag_value       => "",
          :advanced_typecasting  => false
        }

        non_nil_nori_options = nori_options.reject { |_, value| value.nil? }
        @nori = Nori.new(non_nil_nori_options)
      end

    end
  end
end
