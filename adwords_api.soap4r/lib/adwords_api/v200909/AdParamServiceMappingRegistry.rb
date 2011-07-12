require 'adwords_api/v200909/AdParamService'
require 'soap/mapping'

module AdwordsApi; module V200909; module AdParamService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV200909, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV200909, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdParamService::AdParam", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV200909, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V200909::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::AdParamService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdParamError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParam,
    :schema_type => XSD::QName.new(NsV200909, "AdParam"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["insertionText", "SOAP::SOAPString", [0, 1]],
      ["paramIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamError,
    :schema_type => XSD::QName.new(NsV200909, "AdParamError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AdParamErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdParamOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdParamService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdParamService::AdParam", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamPage,
    :schema_type => XSD::QName.new(NsV200909, "AdParamPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V200909::AdParamService::AdParam[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "AdParamPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdParamSelector"),
    :schema_element => [
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["criteriaId", "SOAP::SOAPLong[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::AdParamService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdParamService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdParamService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdParamService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AdParamErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdParamError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::AdParamService::AdParamSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdParamService::AdParamPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdParamService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V200909::AdParamService::AdParamOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdParamService::AdParam[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200909, "RequestHeader"),
    :schema_element => [
      ["applicationToken", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdParamService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200909, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
