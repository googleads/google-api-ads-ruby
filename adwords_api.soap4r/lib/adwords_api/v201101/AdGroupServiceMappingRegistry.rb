require 'adwords_api/v201101/AdGroupService'
require 'soap/mapping'

module AdwordsApi; module V201101; module AdGroupService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::AdGroupService::SortOrder", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::AdGroupService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RejectedError,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::SelectorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapHeader"),
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
    :class => AdwordsApi::V201101::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::AdGroupService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::AdGroupService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::AdGroupService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdGroupService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV201101, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::AdGroupService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::AdGroupService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::AdGroupService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::AdGroupService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201101::AdGroupService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201101::AdGroupService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::AdGroupService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201101::AdGroupService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201101, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDataStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDeltaStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::AdGroupService::SortOrder", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::AdGroupService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RejectedError,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::SelectorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapHeader"),
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
    :class => AdwordsApi::V201101::AdGroupService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdGroupService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::AdGroupService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::AdGroupService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::AdGroupService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdGroupService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdGroupService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Bid,
    :schema_type => XSD::QName.new(NsV201101, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201101::AdGroupService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::AdGroupService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::AdGroupService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::AdGroupService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201101::AdGroupService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::AdGroupService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::AdGroupService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201101::AdGroupService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroup,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::AdGroupService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201101::AdGroupService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::AdGroupService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201101::AdGroupService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdGroupService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdGroupService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupPage,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::AdGroupService::AdGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201101, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDataStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDeltaStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["serviceSelector", "AdwordsApi::V201101::AdGroupService::Selector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdGroupService::AdGroupPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdGroupService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201101::AdGroupService::AdGroupOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdGroupService::AdGroupReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdGroupService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201101, "RequestHeader"),
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
    :class => AdwordsApi::V201101::AdGroupService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201101, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
