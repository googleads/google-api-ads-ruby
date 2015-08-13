require "ads_savon/error"

module GoogleAdsSavon
  module SOAP

    # = GoogleAdsSavon::SOAP::InvalidResponseError
    #
    # Represents an error when the response was not a valid SOAP envelope.
    class InvalidResponseError < Error
    end

  end
end
