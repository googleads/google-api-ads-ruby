require "ads_savon/error"
require "ads_savon/soap/xml"

module GoogleAdsSavon
  module HTTP

    # = GoogleAdsSavon::HTTP::Error
    #
    # Represents an HTTP error. Contains the original <tt>HTTPI::Response</tt>.
    class Error < Error

      # Expects an <tt>HTTPI::Response</tt>.
      def initialize(http)
        self.http = http
      end

      # Accessor for the <tt>HTTPI::Response</tt>.
      attr_accessor :http

      # Returns whether an HTTP error is present.
      def present?
        http.error?
      end

      # Returns the HTTP error message.
      def to_s
        return "" unless present?

        @message ||= begin
          message = "HTTP error (#{http.code})"
          message << ": #{http.body}" unless http.body.empty?
        end
      end

      # Returns the HTTP response as a Hash.
      def to_hash
        @hash = { :code => http.code, :headers => http.headers, :body => http.body }
      end

    end
  end
end
