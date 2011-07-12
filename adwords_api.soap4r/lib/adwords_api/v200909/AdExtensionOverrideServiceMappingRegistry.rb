require 'adwords_api/v200909/AdExtensionOverrideService'
require 'soap/mapping'

module AdwordsApi; module V200909; module AdExtensionOverrideService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Address,
    :schema_type => XSD::QName.new(NsV200909, "Address"),
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
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V200909::AdExtensionOverrideService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::AdExtensionOverrideService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V200909::AdExtensionOverrideService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfo", XSD::QName.new(NsV200909, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::AdExtensionOverrideService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtension,
    :schema_type => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V200909::AdExtensionOverrideService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdExtensionOverrideService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverridePage,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverridePage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Address,
    :schema_type => XSD::QName.new(NsV200909, "Address"),
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
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V200909::AdExtensionOverrideService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::AdExtensionOverrideService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V200909::AdExtensionOverrideService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfo", XSD::QName.new(NsV200909, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdExtensionOverrideService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::AdExtensionOverrideService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdExtensionOverrideService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtension,
    :schema_type => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V200909::AdExtensionOverrideService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdExtensionOverrideService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverridePage,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverridePage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverridePage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdExtensionOverrideService::AdExtensionOverrideReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdExtensionOverrideService::SoapResponseHeader,
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
