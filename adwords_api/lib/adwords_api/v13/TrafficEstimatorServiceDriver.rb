require 'adwords_api/v13/TrafficEstimatorService'
require 'adwords_api/v13/TrafficEstimatorServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V13
module TrafficEstimatorService

class TrafficEstimatorInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com:443/api/adwords/v13/TrafficEstimatorService"

  Methods = [
    [ "",
      "checkKeywordTraffic",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkKeywordTraffic"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "checkKeywordTrafficResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::TrafficEstimatorService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "estimateAdGroupList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateAdGroupList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateAdGroupListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::TrafficEstimatorService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "estimateCampaignList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateCampaignList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateCampaignListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::TrafficEstimatorService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "estimateKeywordList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateKeywordList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "estimateKeywordListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::TrafficEstimatorService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
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
