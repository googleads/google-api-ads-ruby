require 'adwords_api/v13/ReportService'
require 'soap/mapping'

module AdwordsApi; module V13; module ReportService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::DefinedReportJob,
    :schema_type => XSD::QName.new(NsV13, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV13, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdwordsApi::V13::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdwordsApi::V13::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPLong[]", [0, nil]],
      ["adWordsType", "AdwordsApi::V13::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V13::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdwordsApi::V13::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdwordsApi::V13::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV13, "AdWordsType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV13, "KeywordStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV13, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::DefinedReportJob,
    :schema_type => XSD::QName.new(NsV13, "DefinedReportJob"),
    :schema_basetype => XSD::QName.new(NsV13, "ReportJob"),
    :schema_element => [
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["crossClient", "SOAP::SOAPBoolean", [0, 1]],
      ["endDay", "SOAP::SOAPDate"],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["startDay", "SOAP::SOAPDate"],
      ["status", "AdwordsApi::V13::ReportService::ReportJobStatus", [0, 1]],
      ["adGroupStatuses", "AdwordsApi::V13::ReportService::AdGroupStatus[]", [0, nil]],
      ["adGroups", "SOAP::SOAPLong[]", [0, nil]],
      ["adWordsType", "AdwordsApi::V13::ReportService::AdWordsType", [0, 1]],
      ["aggregationTypes", "SOAP::SOAPString[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V13::ReportService::CampaignStatus[]", [0, nil]],
      ["campaigns", "SOAP::SOAPInt[]", [0, nil]],
      ["includeZeroImpression", "SOAP::SOAPBoolean", [0, 1]],
      ["keywordStatuses", "AdwordsApi::V13::ReportService::KeywordStatus[]", [0, nil]],
      ["keywordType", "AdwordsApi::V13::ReportService::KeywordType", [0, 1]],
      ["keywords", "SOAP::SOAPString[]", [0, nil]],
      ["selectedColumns", "SOAP::SOAPString[]", [0, nil]],
      ["selectedReportType", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV13, "AdGroupStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::AdWordsType,
    :schema_type => XSD::QName.new(NsV13, "AdWordsType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV13, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::KeywordStatus,
    :schema_type => XSD::QName.new(NsV13, "KeywordStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ReportJobStatus,
    :schema_type => XSD::QName.new(NsV13, "ReportJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::DeleteReport,
    :schema_name => XSD::QName.new(NsV13, "deleteReport"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::DeleteReportResponse,
    :schema_name => XSD::QName.new(NsV13, "deleteReportResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::ReportService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetAllJobs,
    :schema_name => XSD::QName.new(NsV13, "getAllJobs"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetAllJobsResponse,
    :schema_name => XSD::QName.new(NsV13, "getAllJobsResponse"),
    :schema_element => [
      ["getAllJobsReturn", "AdwordsApi::V13::ReportService::ReportJob[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetGzipReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV13, "getGzipReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetGzipReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV13, "getGzipReportDownloadUrlResponse"),
    :schema_element => [
      ["getGzipReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetReportDownloadUrl,
    :schema_name => XSD::QName.new(NsV13, "getReportDownloadUrl"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetReportDownloadUrlResponse,
    :schema_name => XSD::QName.new(NsV13, "getReportDownloadUrlResponse"),
    :schema_element => [
      ["getReportDownloadUrlReturn", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetReportJobStatus,
    :schema_name => XSD::QName.new(NsV13, "getReportJobStatus"),
    :schema_element => [
      ["reportJobId", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::GetReportJobStatusResponse,
    :schema_name => XSD::QName.new(NsV13, "getReportJobStatusResponse"),
    :schema_element => [
      ["getReportJobStatusReturn", "AdwordsApi::V13::ReportService::ReportJobStatus"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ScheduleReportJob,
    :schema_name => XSD::QName.new(NsV13, "scheduleReportJob"),
    :schema_element => [
      ["job", "AdwordsApi::V13::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ScheduleReportJobResponse,
    :schema_name => XSD::QName.new(NsV13, "scheduleReportJobResponse"),
    :schema_element => [
      ["scheduleReportJobReturn", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ValidateReportJob,
    :schema_name => XSD::QName.new(NsV13, "validateReportJob"),
    :schema_element => [
      ["job", "AdwordsApi::V13::ReportService::ReportJob"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::ReportService::ValidateReportJobResponse,
    :schema_name => XSD::QName.new(NsV13, "validateReportJobResponse"),
    :schema_element => []
  )
end

end; end; end
