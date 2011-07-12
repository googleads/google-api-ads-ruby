require 'adwords_api/v201101/AdParamService'
require 'soap/mapping'

module AdwordsApi; module V201101; module AdParamService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV201101, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV201101, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdParamService::AdParam", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV201101, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201101::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV201101, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdParamService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdParamError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV201101, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV201101, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdParamService::AdParam", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV201101, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201101::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV201101, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdParamService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdParamError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::AdParamService::AdParamSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdParamService::AdParamPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201101::AdParamService::AdParamOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdParamService::AdParam[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdParamService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdParamService::SoapResponseHeader,
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
