require 'adwords_api/v200909/AdGroupAdService'
require 'soap/mapping'

module AdwordsApi; module V200909; module AdGroupAdService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200909, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200909, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Address,
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
    :class => AdwordsApi::V200909::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV200909, "Audio"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV200909, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200909, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200909, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200909, "Image"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200909, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200909, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200909, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV200909, "Video"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V200909::AdGroupAdService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200909, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200909, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V200909::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V200909::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV200909, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V200909::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V200909::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V200909::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200909, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200909, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdError,
    :schema_type => XSD::QName.new(NsV200909, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::AdGroupAdService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::AdGroupAdService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdStats,
    :schema_type => XSD::QName.new(NsV200909, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdStatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdStatsSelector"),
    :schema_basetype => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Address,
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
    :class => AdwordsApi::V200909::AdGroupAdService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::AdGroupAdService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Audio,
    :schema_type => XSD::QName.new(NsV200909, "Audio"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::CityTarget,
    :schema_type => XSD::QName.new(NsV200909, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::AdGroupAdService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Dimensions,
    :schema_type => XSD::QName.new(NsV200909, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::AdGroupAdService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::IdError,
    :schema_type => XSD::QName.new(NsV200909, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Image,
    :schema_type => XSD::QName.new(NsV200909, "Image"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageError,
    :schema_type => XSD::QName.new(NsV200909, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaError,
    :schema_type => XSD::QName.new(NsV200909, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MobileAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::AdGroupAdService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::AdGroupAdService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::AdGroupAdService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::AdGroupAdService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::AdGroupAdService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::AdGroupAdService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupAdService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupAdService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TextAd,
    :schema_type => XSD::QName.new(NsV200909, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Video,
    :schema_type => XSD::QName.new(NsV200909, "Video"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupAdService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Media,
    :schema_type => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::AdGroupAdService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::AdGroupAdService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::AdGroupAdService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupAdService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupAdService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupAdService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::AdGroupAdService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V200909::AdGroupAdService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageAd,
    :schema_type => XSD::QName.new(NsV200909, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200909, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V200909::AdGroupAdService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]],
      ["icon", "AdwordsApi::V200909::AdGroupAdService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElement,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V200909::AdGroupAdService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdSelector"),
    :schema_element => [
      ["campaignIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adGroupIds", "SOAP::SOAPLong[]", [0, nil]],
      ["adIds", "SOAP::SOAPLong[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::AdGroupAdService::AdStatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::AdGroupAdService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateAd,
    :schema_type => XSD::QName.new(NsV200909, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V200909::AdGroupAdService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V200909::AdGroupAdService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V200909::AdGroupAdService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Ad,
    :schema_type => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V200909::AdGroupAdService::Ad", [0, 1]],
      ["status", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdGroupAdService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdGroupAdService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::AdGroupAdService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdPage,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupAdService::AdGroupAd[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200909, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaSize,
    :schema_type => XSD::QName.new(NsV200909, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupAdService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdGroupAdService::AdGroupAdReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupAdService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupAdService::SoapResponseHeader,
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
