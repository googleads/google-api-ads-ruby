require 'adwords_api/v201101/AdExtensionOverrideService'
require 'soap/mapping'

module AdwordsApi; module V201101; module AdExtensionOverrideService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Address,
    :schema_type => XSD::QName.new(NsV201101, "Address"),
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201101::AdExtensionOverrideService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::AdExtensionOverrideService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201101::AdExtensionOverrideService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201101, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["isCallOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfo", XSD::QName.new(NsV201101, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Sitelink,
    :schema_type => XSD::QName.new(NsV201101, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201101, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201101::AdExtensionOverrideService::Sitelink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideSelector,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdExtensionOverrideService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201101::AdExtensionOverrideService::ProductCondition[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201101, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtension,
    :schema_type => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201101::AdExtensionOverrideService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdExtensionOverrideService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverridePage,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverridePage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Address,
    :schema_type => XSD::QName.new(NsV201101, "Address"),
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201101::AdExtensionOverrideService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::AdExtensionOverrideService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201101::AdExtensionOverrideService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201101, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["isCallOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfo", XSD::QName.new(NsV201101, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Sitelink,
    :schema_type => XSD::QName.new(NsV201101, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201101, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201101::AdExtensionOverrideService::Sitelink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideSelector,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adExtensionIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::AdExtensionOverrideService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::AdExtensionOverrideService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201101::AdExtensionOverrideService::ProductCondition[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201101, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201101::AdExtensionOverrideService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::AdExtensionOverrideService::Money", [0, 1]],
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtension,
    :schema_type => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201101::AdExtensionOverrideService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::AdExtensionOverrideService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverridePage,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverridePage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverride[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverridePage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::AdExtensionOverrideService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::AdExtensionOverrideService::AdExtensionOverrideReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapHeader,
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
    :class => AdwordsApi::V201101::AdExtensionOverrideService::SoapResponseHeader,
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
