require 'adwords_api/v201008/TargetingIdeaService'
require 'soap/mapping'

module AdwordsApi; module V201008; module TargetingIdeaService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"
  NsV201008_0 = "https://adwords.google.com/api/adwords/o/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CityTarget,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserInterest,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserInterest"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userInterestId", "SOAP::SOAPLong", [0, 1]],
      ["userInterestName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::TargetingIdeaService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::TargetingIdeaService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::TargetingIdeaService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201008_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201008_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201008::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201008_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201008_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201008_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201008_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201008_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201008::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201008::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201008::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201008::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201008::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201008::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201008::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201008::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201008::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201008::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201008_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201008::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201008_0, "AttributeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201008_0, "CompetitionSearchParameter.Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchAction")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201008_0, "RequestType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.AdFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.AdType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.PlacementType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CityTarget,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserInterest,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserInterest"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userInterestId", "SOAP::SOAPLong", [0, 1]],
      ["userInterestName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::TargetingIdeaService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::TargetingIdeaService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::TargetingIdeaService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201008_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201008_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201008::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201008_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201008_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201008_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201008_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201008::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201008_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201008::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201008::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201008::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201008::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201008::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201008_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201008_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201008::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201008::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201008::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201008::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201008::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201008_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201008::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201008::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201008_0, "AttributeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201008_0, "CompetitionSearchParameter.Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201008_0, "IdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchAction")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201008_0, "RequestType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.AdFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.AdType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201008_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::Get,
    :schema_name => XSD::QName.new(NsV201008_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::ApiException,
    :schema_name => XSD::QName.new(NsV201008_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GetBulkKeywordIdeas,
    :schema_name => XSD::QName.new(NsV201008_0, "getBulkKeywordIdeas"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::GetBulkKeywordIdeasResponse,
    :schema_name => XSD::QName.new(NsV201008_0, "getBulkKeywordIdeasResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201008_0, "RequestHeader"),
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
    :class => AdwordsApi::V201008::TargetingIdeaService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201008_0, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
