require 'adwords_api/v13/AccountService'
require 'adwords_api/v13/AccountServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V13
module AccountService

class AccountInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com:443/api/adwords/v13/AccountService"

  Methods = [
    [ "",
      "getAccountInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAccountInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAccountInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::AccountService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getClientAccountInfos",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getClientAccountInfos"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getClientAccountInfosResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::AccountService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getClientAccounts",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getClientAccounts"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getClientAccountsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::AccountService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "getMccAlerts",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMccAlerts"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getMccAlertsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::AccountService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal", :name=>"ApiException"}} }
    ],
    [ "",
      "updateAccountInfo",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateAccountInfo"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "updateAccountInfoResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::AccountService::ApiException"=>{:encodingstyle=>"document", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :use=>"literal", :name=>"ApiException"}} }
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
