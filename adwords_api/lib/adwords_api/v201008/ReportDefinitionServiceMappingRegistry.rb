require 'adwords_api/v201008/ReportDefinitionService'
require 'soap/mapping'

module AdwordsApi; module V201008; module ReportDefinitionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Predicate,
    :schema_type => XSD::QName.new(NsV201008, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201008::ReportDefinitionService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionError,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionField,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionField"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString", [0, 1]],
      ["displayFieldName", "SOAP::SOAPString", [0, 1]],
      ["xmlAttributeName", "SOAP::SOAPString", [0, 1]],
      ["fieldType", "SOAP::SOAPString", [0, 1]],
      ["enumValues", "SOAP::SOAPString[]", [0, nil]],
      ["canSelect", "SOAP::SOAPBoolean", [0, 1]],
      ["canFilter", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["partialFailure", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Selector,
    :schema_type => XSD::QName.new(NsV201008, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201008::ReportDefinitionService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201008::ReportDefinitionService::DateRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::ReportDefinitionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionSelector,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionSelector"),
    :schema_element => [
      ["paging", "AdwordsApi::V201008::ReportDefinitionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinition,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["selector", "AdwordsApi::V201008::ReportDefinitionService::Selector", [0, 1]],
      ["reportName", "SOAP::SOAPString", [0, 1]],
      ["reportType", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionReportType", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["dateRangeType", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionDateRangeType", [0, 1]],
      ["downloadFormat", "AdwordsApi::V201008::ReportDefinitionService::DownloadFormat", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionOperation,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::ReportDefinitionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinition", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionPage,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinition[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DownloadFormat,
    :schema_type => XSD::QName.new(NsV201008, "DownloadFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201008, "Predicate.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionDateRangeType,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition.DateRangeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionReportType,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition.ReportType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Predicate,
    :schema_type => XSD::QName.new(NsV201008, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201008::ReportDefinitionService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionError,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionField,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionField"),
    :schema_element => [
      ["fieldName", "SOAP::SOAPString", [0, 1]],
      ["displayFieldName", "SOAP::SOAPString", [0, 1]],
      ["xmlAttributeName", "SOAP::SOAPString", [0, 1]],
      ["fieldType", "SOAP::SOAPString", [0, 1]],
      ["enumValues", "SOAP::SOAPString[]", [0, nil]],
      ["canSelect", "SOAP::SOAPBoolean", [0, 1]],
      ["canFilter", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::ReportDefinitionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["partialFailure", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Selector,
    :schema_type => XSD::QName.new(NsV201008, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201008::ReportDefinitionService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201008::ReportDefinitionService::DateRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::ReportDefinitionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionSelector,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionSelector"),
    :schema_element => [
      ["paging", "AdwordsApi::V201008::ReportDefinitionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinition,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["selector", "AdwordsApi::V201008::ReportDefinitionService::Selector", [0, 1]],
      ["reportName", "SOAP::SOAPString", [0, 1]],
      ["reportType", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionReportType", [0, 1]],
      ["hasAttachment", "SOAP::SOAPBoolean", [0, 1]],
      ["dateRangeType", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionDateRangeType", [0, 1]],
      ["downloadFormat", "AdwordsApi::V201008::ReportDefinitionService::DownloadFormat", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionOperation,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::ReportDefinitionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinition", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionPage,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinition[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::DownloadFormat,
    :schema_type => XSD::QName.new(NsV201008, "DownloadFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201008, "Predicate.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionDateRangeType,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition.DateRangeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionReportType,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinition.ReportType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReportDefinitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::ReportDefinitionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::GetReportFields,
    :schema_name => XSD::QName.new(NsV201008, "getReportFields"),
    :schema_element => [
      ["reportType", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionReportType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::GetReportFieldsResponse,
    :schema_name => XSD::QName.new(NsV201008, "getReportFieldsResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinitionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::ReportDefinitionService::ReportDefinition[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201008, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["partialFailure", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::ReportDefinitionService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201008, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
