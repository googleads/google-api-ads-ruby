require 'adwords_api/v201003/TargetingIdeaService'
require 'adwords_api/v201003/TargetingIdeaServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V201003
module TargetingIdeaService

class TargetingIdeaServiceInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com:443/api/adwords/o/v201003/TargetingIdeaService"

  Methods = [
    [ "",
      "get",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/o/v201003", "get"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/o/v201003", "getResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V201003::TargetingIdeaService::ApiException_"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/o/v201003", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getBulkKeywordIdeas",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/o/v201003", "getBulkKeywordIdeas"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/o/v201003", "getBulkKeywordIdeasResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V201003::TargetingIdeaService::ApiException_"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/o/v201003", :use=>"literal", :name=>"ApiException"}} }
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
