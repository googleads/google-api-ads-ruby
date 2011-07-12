require 'adwords_api/v200909/InfoService'
require 'soap/mapping'

module AdwordsApi; module V200909; module InfoService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"
  NsV200909_0 = "https://adwords.google.com/api/adwords/info/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SoapHeader,
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
    :class => AdwordsApi::V200909::InfoService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::InfoService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageError,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ApiUsageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageRecord,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageRecord"),
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["cost", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InfoSelector,
    :schema_type => XSD::QName.new(NsV200909_0, "InfoSelector"),
    :schema_element => [
      ["serviceName", "SOAP::SOAPString", [0, 1]],
      ["methodName", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V200909::InfoService::Operator", [0, 1]],
      ["dateRange", "AdwordsApi::V200909::InfoService::DateRange", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["apiUsageType", "AdwordsApi::V200909::InfoService::ApiUsageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageInfo,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageInfo"),
    :schema_element => [
      ["apiUsageRecords", "AdwordsApi::V200909::InfoService::ApiUsageRecord[]", [0, nil]],
      ["cost", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageType,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SoapHeader,
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
    :class => AdwordsApi::V200909::InfoService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::InfoService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageError,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::InfoService::ApiUsageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageRecord,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageRecord"),
    :schema_element => [
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["cost", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InfoSelector,
    :schema_type => XSD::QName.new(NsV200909_0, "InfoSelector"),
    :schema_element => [
      ["serviceName", "SOAP::SOAPString", [0, 1]],
      ["methodName", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V200909::InfoService::Operator", [0, 1]],
      ["dateRange", "AdwordsApi::V200909::InfoService::DateRange", [0, 1]],
      ["clientEmails", "SOAP::SOAPString[]", [0, nil]],
      ["apiUsageType", "AdwordsApi::V200909::InfoService::ApiUsageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageInfo,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageInfo"),
    :schema_element => [
      ["apiUsageRecords", "AdwordsApi::V200909::InfoService::ApiUsageRecord[]", [0, nil]],
      ["cost", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiUsageType,
    :schema_type => XSD::QName.new(NsV200909_0, "ApiUsageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::Get,
    :schema_name => XSD::QName.new(NsV200909_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::InfoService::InfoSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::InfoService::ApiUsageInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::ApiException,
    :schema_name => XSD::QName.new(NsV200909_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::InfoService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::InfoService::SoapHeader,
    :schema_name => XSD::QName.new(NsV200909_0, "RequestHeader"),
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
    :class => AdwordsApi::V200909::InfoService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV200909_0, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
