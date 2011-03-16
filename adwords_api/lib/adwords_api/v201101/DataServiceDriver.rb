require 'adwords_api/v201101/DataService'
require 'adwords_api/v201101/DataServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V201101
module DataService

class DataServiceInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com:443/api/adwords/cm/v201101/DataService"

  Methods = [
    [ "",
      "getAdGroupBidLandscape",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201101", "getAdGroupBidLandscape"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201101", "getAdGroupBidLandscapeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V201101::DataService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/cm/v201101", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getCriterionBidLandscape",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201101", "getCriterionBidLandscape"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/cm/v201101", "getCriterionBidLandscapeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V201101::DataService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/cm/v201101", :use=>"literal", :name=>"ApiException"}} }
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
