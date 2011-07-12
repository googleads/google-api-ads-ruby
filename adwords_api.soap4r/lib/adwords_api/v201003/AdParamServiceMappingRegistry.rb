require 'adwords_api/v201003/AdParamService'
require 'soap/mapping'

module AdwordsApi; module V201003; module AdParamService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV201003, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV201003, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::AdParamService::AdParam", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV201003, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201003::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::AdParamService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdParamError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV201003, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV201003, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::AdParamService::AdParam", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV201003, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201003::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV201003, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::AdParamService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdParamError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::AdParamService::AdParamSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::AdParamService::AdParamPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201003::AdParamService::AdParamOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::AdParamService::AdParam[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201003, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::AdParamService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201003, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
