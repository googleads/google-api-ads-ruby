require 'adwords_api/v13/ReportService'
require 'adwords_api/v13/ReportServiceMappingRegistry'
require 'soap/rpc/driver'

module AdwordsApi
module V13
module ReportService

class ReportInterface < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://adwords.google.com:443/api/adwords/v13/ReportService"

  Methods = [
    [ "",
      "deleteReport",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "deleteReport"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "deleteReportResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "getAllJobs",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllJobs"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getAllJobsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "getGzipReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getGzipReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getGzipReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "getReportDownloadUrl",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getReportDownloadUrl"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getReportDownloadUrlResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "getReportJobStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getReportJobStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "getReportJobStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "scheduleReportJob",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "scheduleReportJob"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "scheduleReportJobResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
    ],
    [ "",
      "validateReportJob",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "validateReportJob"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "https://adwords.google.com/api/adwords/v13", "validateReportJobResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {"AdwordsApi::V13::ReportService::ApiException"=>{:encodingstyle=>"document", :use=>"literal", :namespace=>nil, :ns=>"https://adwords.google.com/api/adwords/v13", :name=>"ApiException"}} }
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
