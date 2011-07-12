require 'adwords_api/v201003/CampaignAdExtensionService'
require 'soap/mapping'

module AdwordsApi; module V201003; module CampaignAdExtensionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignAdExtensionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201003::CampaignAdExtensionService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::CampaignAdExtensionService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201003::CampaignAdExtensionService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201003, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Sitelink,
    :schema_type => XSD::QName.new(NsV201003, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201003, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201003::CampaignAdExtensionService::Sitelink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapHeader,
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
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignAdExtensionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignAdExtensionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionSelector"),
    :schema_element => [
      ["statsSelector", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatsSelector", [0, 1]],
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::CampaignAdExtensionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtension,
    :schema_type => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201003::CampaignAdExtensionService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionApprovalStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::CampaignAdExtensionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionPage,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
    :schema_element => [
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["streetAddress2", "SOAP::SOAPString", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["provinceName", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignAdExtensionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201003::CampaignAdExtensionService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::CampaignAdExtensionService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201003::CampaignAdExtensionService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201003, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Sitelink,
    :schema_type => XSD::QName.new(NsV201003, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201003, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201003::CampaignAdExtensionService::Sitelink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapHeader,
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
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignAdExtensionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignAdExtensionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignAdExtensionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionSelector"),
    :schema_element => [
      ["statsSelector", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatsSelector", [0, 1]],
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201003::CampaignAdExtensionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtension,
    :schema_type => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201003::CampaignAdExtensionService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionApprovalStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::CampaignAdExtensionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionPage,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtension[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtension.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignAdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignAdExtensionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::CampaignAdExtensionService::CampaignAdExtensionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapHeader,
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
    :class => AdwordsApi::V201003::CampaignAdExtensionService::SoapResponseHeader,
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
