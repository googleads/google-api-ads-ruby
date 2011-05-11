require 'adwords_api/v201008/BidLandscapeService'
require 'adwords_api/v201008/BidLandscapeServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V201008
module BidLandscapeService

class BidLandscapeServiceInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/cm/v201008/BidLandscapeService"

  Methods = [
    [ "",
      "getBidLandscape",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201008", "getBidLandscape"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201008", "getBidLandscapeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V201008::BidLandscapeService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/cm/v201008", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException", :namespace=>nil}} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end


end
end
end
