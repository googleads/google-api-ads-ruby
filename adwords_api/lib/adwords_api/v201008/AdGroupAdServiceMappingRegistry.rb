require 'adwords_api/v201008/AdGroupAdService'
require 'soap/mapping'

module AdwordsApi; module V201008; module AdGroupAdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV201008, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV201008, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Address,
    :schema_type => XSD::QName.new(NsV201008, "Address"),
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
    :class => AdwordsApi::V201008::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV201008, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV201008, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV201008, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV201008, "Image"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV201008, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV201008, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProductAd,
    :schema_type => XSD::QName.new(NsV201008, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV201008, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201008, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201008::AdGroupAdService::VideoType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV201008, "Video"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201008::AdGroupAdService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV201008, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201008, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdwordsApi::V201008::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201008::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201008, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201008::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201008::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201008::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201008, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV201008, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::VideoType,
    :schema_type => XSD::QName.new(NsV201008, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV201008, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV201008, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Address,
    :schema_type => XSD::QName.new(NsV201008, "Address"),
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
    :class => AdwordsApi::V201008::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV201008, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV201008, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV201008, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV201008, "Image"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV201008, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV201008, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProductAd,
    :schema_type => XSD::QName.new(NsV201008, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV201008, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201008, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201008::AdGroupAdService::VideoType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV201008, "Video"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupAdService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201008::AdGroupAdService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV201008, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201008, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["fullBusinessName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["streetAddress", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["region", "SOAP::SOAPString", [0, 1]],
      ["regionCode", "SOAP::SOAPString", [0, 1]],
      ["postalCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]],
      ["target", "AdwordsApi::V201008::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201008::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201008::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statuses", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201008, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201008::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201008::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201008::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201008::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201008, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV201008, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::VideoType,
    :schema_type => XSD::QName.new(NsV201008, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::AdGroupAdService::AdGroupAdReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupAdService::SoapResponseHeader,
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
