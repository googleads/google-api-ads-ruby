require 'adwords_api/v200909/TargetingIdeaService'
require 'soap/mapping'

module AdwordsApi; module V200909; module TargetingIdeaService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"
  NsV200909_0 = "https://adwords.google.com/api/adwords/o/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CityTarget,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV200909_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV200909_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V200909::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V200909::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV200909_0, "InStreamAdInfo"),
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
    :class => AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V200909::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV200909_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]],
      ["excludes", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV200909_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NgramGroupsSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "NgramGroupsSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["ngramGroups", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV200909_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V200909::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V200909::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V200909::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V200909::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V200909::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V200909::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V200909::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V200909::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV200909_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV200909_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV200909_0, "AttributeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV200909_0, "CompetitionSearchParameter.Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV200909_0, "IdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV200909_0, "RequestType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.AdFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.AdType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.PlacementType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CityTarget,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::TargetingIdeaService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV200909_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV200909_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V200909::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V200909::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV200909_0, "InStreamAdInfo"),
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
    :class => AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V200909::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV200909_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]],
      ["excludes", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MobileSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "MobileSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV200909_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NgramGroupsSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "NgramGroupsSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["ngramGroups", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV200909_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V200909::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V200909::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V200909::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV200909_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V200909::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "trigger")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V200909::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V200909::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V200909::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V200909::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V200909::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV200909_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV200909_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV200909_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV200909_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV200909_0, "AttributeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV200909_0, "CompetitionSearchParameter.Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV200909_0, "IdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV200909_0, "RequestType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.AdFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.AdType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV200909_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV200909_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::Get,
    :schema_name => XSD::QName.new(NsV200909_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::ApiException,
    :schema_name => XSD::QName.new(NsV200909_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GetBulkKeywordIdeas,
    :schema_name => XSD::QName.new(NsV200909_0, "getBulkKeywordIdeas"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::GetBulkKeywordIdeasResponse,
    :schema_name => XSD::QName.new(NsV200909_0, "getBulkKeywordIdeasResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V200909::TargetingIdeaService::SoapResponseHeader,
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
