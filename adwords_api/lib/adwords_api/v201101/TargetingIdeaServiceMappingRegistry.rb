require 'adwords_api/v201101/TargetingIdeaService'
require 'soap/mapping'

module AdwordsApi; module V201101; module TargetingIdeaService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"
  NsV201101_0 = "https://adwords.google.com/api/adwords/o/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["type", "AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscapeType", [0, 1]],
      ["landscapeCurrent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201101::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V201101::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201101::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint,
    :schema_type => XSD::QName.new(NsV201101, "BidLandscape.LandscapePoint"),
    :schema_element => [
      ["bid", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["marginalCpc", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CityTarget,
    :schema_type => XSD::QName.new(NsV201101, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201101, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "CriterionBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201101::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201101, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201101::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201101, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201101::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::TargetingIdeaService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::TargetingIdeaService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201101::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201101::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201101, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserInterest,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserInterest"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userInterestId", "SOAP::SOAPLong", [0, 1]],
      ["userInterestName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::TargetingIdeaService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BidLandscapeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BidLandscapeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::BidLandscape", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201101_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201101::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "CriterionAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Criterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeError,
    :schema_type => XSD::QName.new(NsV201101_0, "CurrencyCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DeviceTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "DeviceTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["deviceType", "AdwordsApi::V201101::TargetingIdeaService::DeviceType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201101::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201101::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfo"),
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
    :class => AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201101::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201101_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201101_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201101::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201101::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201101::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201101::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201101::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201101::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201101::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201101::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201101_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscapeType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201101, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201101, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201101, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201101_0, "AttributeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201101_0, "CompetitionSearchParameter.Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "CurrencyCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DeviceType,
    :schema_type => XSD::QName.new(NsV201101_0, "DeviceType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchAction")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchesRegexError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201101_0, "RequestType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.PlacementType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["type", "AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscapeType", [0, 1]],
      ["landscapeCurrent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201101::TargetingIdeaService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Address,
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
    :class => AdwordsApi::V201101::TargetingIdeaService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201101::TargetingIdeaService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint,
    :schema_type => XSD::QName.new(NsV201101, "BidLandscape.LandscapePoint"),
    :schema_element => [
      ["bid", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["marginalCpc", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BudgetError,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CityTarget,
    :schema_type => XSD::QName.new(NsV201101, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201101, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "CriterionBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::TargetingIdeaService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201101::TargetingIdeaService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201101, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201101::TargetingIdeaService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201101, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201101::TargetingIdeaService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::TargetingIdeaService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::TargetingIdeaService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::TargetingIdeaService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201101::TargetingIdeaService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201101::TargetingIdeaService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapHeader,
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
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetError,
    :schema_type => XSD::QName.new(NsV201101, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserInterest,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserInterest"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userInterestId", "SOAP::SOAPLong", [0, 1]],
      ["userInterestName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::TargetingIdeaService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::AdFormatSpec[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AdShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AdTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["adTypes", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AverageTargetedMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "AverageTargetedMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BidLandscapeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BidLandscapeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::BidLandscape", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201101_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "CompetitionSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["levels", "AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameterLevel[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CountryTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "CountryTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["countryTargets", "AdwordsApi::V201101::TargetingIdeaService::CountryTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "CriterionAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Criterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeError,
    :schema_type => XSD::QName.new(NsV201101_0, "CurrencyCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DeviceTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "DeviceTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["deviceType", "AdwordsApi::V201101::TargetingIdeaService::DeviceType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPDouble", [0, 1]],
      ["maximum", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ExcludedKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "ExcludedKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201101::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GlobalMonthlySearchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "GlobalMonthlySearchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaTextMatchesSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTextMatchesSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["included", "SOAP::SOAPString[]", [0, nil]],
      ["excluded", "SOAP::SOAPString[]", [0, nil]],
      ["priorityAction", "AdwordsApi::V201101::TargetingIdeaService::MatchAction", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::IdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfo"),
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
    :class => AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::InStreamAdInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IncludeAdultContentSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "IncludeAdultContentSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Keyword", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordCategoryIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordCategoryIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["categoryId", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordMatchTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordMatchTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywordMatchTypes", "AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LanguageTargetSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "LanguageTargetSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["languageTargets", "AdwordsApi::V201101::TargetingIdeaService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongComparisonOperation,
    :schema_type => XSD::QName.new(NsV201101_0, "LongComparisonOperation"),
    :schema_element => [
      ["minimum", "SOAP::SOAPLong", [0, 1]],
      ["maximum", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::C_Range", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Placement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlacementTypeSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["placementTypes", "AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::C_Range,
    :schema_type => XSD::QName.new(NsV201101_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201101::TargetingIdeaService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201101::TargetingIdeaService::ComparableValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RelatedToKeywordSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "RelatedToKeywordSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["keywords", "AdwordsApi::V201101::TargetingIdeaService::Keyword[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RelatedToUrlSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "RelatedToUrlSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["urls", "SOAP::SOAPString[]", [0, nil]],
      ["includeSubUrls", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SearchShareSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "SearchShareSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["operation", "AdwordsApi::V201101::TargetingIdeaService::DoubleComparisonOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SeedAdGroupIdSearchParameter,
    :schema_type => XSD::QName.new(NsV201101_0, "SeedAdGroupIdSearchParameter"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "SearchParameter"),
    :schema_element => [
      ["searchParameter_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "SearchParameter.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdea,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201101::TargetingIdeaService::Type_AttributeMapEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaError,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaPage,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaPage"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["entries", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdea[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaSelector,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaSelector"),
    :schema_element => [
      ["searchParameters", "AdwordsApi::V201101::TargetingIdeaService::SearchParameter[]", [0, nil]],
      ["ideaType", "AdwordsApi::V201101::TargetingIdeaService::IdeaType", [0, 1]],
      ["requestType", "AdwordsApi::V201101::TargetingIdeaService::RequestType", [0, 1]],
      ["requestedAttributeTypes", "AdwordsApi::V201101::TargetingIdeaService::AttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::TargetingIdeaService::Paging", [0, 1]],
      ["localeCode", "SOAP::SOAPString", [0, 1]],
      ["currencyCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Type_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201101_0, "Type_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::TargetingIdeaService::AttributeType", [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::Attribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::TargetingIdeaService::WebpageDescriptor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupBidLandscapeType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201101, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201101, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::PlatformType,
    :schema_type => XSD::QName.new(NsV201101, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::AttributeType,
    :schema_type => XSD::QName.new(NsV201101_0, "AttributeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CompetitionSearchParameterLevel,
    :schema_type => XSD::QName.new(NsV201101_0, "CompetitionSearchParameter.Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::CurrencyCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "CurrencyCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::DeviceType,
    :schema_type => XSD::QName.new(NsV201101_0, "DeviceType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::IdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchAction,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchAction")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "MatchesRegexError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::OpportunityIdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::RequestType,
    :schema_type => XSD::QName.new(NsV201101_0, "RequestType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsAdType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "TargetingIdeaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::Get,
    :schema_name => XSD::QName.new(NsV201101_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::ApiException,
    :schema_name => XSD::QName.new(NsV201101_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::TargetingIdeaService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GetBulkKeywordIdeas,
    :schema_name => XSD::QName.new(NsV201101_0, "getBulkKeywordIdeas"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::GetBulkKeywordIdeasResponse,
    :schema_name => XSD::QName.new(NsV201101_0, "getBulkKeywordIdeasResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::TargetingIdeaService::TargetingIdeaPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201101_0, "RequestHeader"),
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
    :class => AdwordsApi::V201101::TargetingIdeaService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201101_0, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
