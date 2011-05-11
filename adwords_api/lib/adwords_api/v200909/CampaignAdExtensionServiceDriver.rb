require 'adwords_api/v200909/CampaignAdExtensionService'
require 'adwords_api/v200909/CampaignAdExtensionServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V200909
module CampaignAdExtensionService

class CampaignAdExtensionServiceInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com/api/adwords/cm/v200909/CampaignAdExtensionService"

  Methods = [
    [ "",
      "get",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200909", "get"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200909", "getResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V200909::CampaignAdExtensionService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/cm/v200909", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException", :namespace=>nil}} }
    ],
    [ "",
      "mutate",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200909", "mutate"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v200909", "mutateResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V200909::CampaignAdExtensionService::ApiException"=>{:ns=>"https://adwords.google.com/api/adwords/cm/v200909", :encodingstyle=>"document", :use=>"literal", :name=>"ApiException", :namespace=>nil}} }
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
