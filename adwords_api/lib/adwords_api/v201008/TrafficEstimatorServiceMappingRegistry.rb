require 'adwords_api/v201008/TrafficEstimatorService'
require 'soap/mapping'

module AdwordsApi; module V201008; module TrafficEstimatorService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"
  NsV201008_0 = "https://adwords.google.com/api/adwords/o/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::TrafficEstimatorService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Address,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::TrafficEstimatorService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CityTarget,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::TrafficEstimatorService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::TrafficEstimatorService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::TrafficEstimatorService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::TrafficEstimatorService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::TrafficEstimatorService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::TrafficEstimatorService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::TrafficEstimatorService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::TrafficEstimatorService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapHeader,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::TrafficEstimatorService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::TrafficEstimatorService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TrafficEstimatorService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::TrafficEstimatorService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "AdGroupEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["keywordEstimates", "AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimate[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "AdGroupEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["keywordEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimateRequest[]", [0, nil]],
      ["maxCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "CampaignEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupEstimates", "AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimate[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "CampaignEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimateRequest[]", [0, nil]],
      ["targets", "AdwordsApi::V201008::TrafficEstimatorService::Target[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Estimate,
    :schema_type => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["min", "AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate", [0, 1]],
      ["max", "AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["keyword", "AdwordsApi::V201008::TrafficEstimatorService::Keyword", [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "StatsEstimate"),
    :schema_element => [
      ["averageCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["totalCost", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorError,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorResult,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorResult"),
    :schema_element => [
      ["campaignEstimates", "AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimate[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorSelector,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorSelector"),
    :schema_element => [
      ["campaignEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimateRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::TrafficEstimatorService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Address,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::TrafficEstimatorService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CityTarget,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::TrafficEstimatorService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::TrafficEstimatorService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::TrafficEstimatorService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::TrafficEstimatorService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::TrafficEstimatorService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::TrafficEstimatorService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::TrafficEstimatorService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::TrafficEstimatorService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapHeader,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::TrafficEstimatorService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::TrafficEstimatorService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TrafficEstimatorService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::TrafficEstimatorService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "AdGroupEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["keywordEstimates", "AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimate[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "AdGroupEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["keywordEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimateRequest[]", [0, nil]],
      ["maxCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "CampaignEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupEstimates", "AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimate[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "CampaignEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::AdGroupEstimateRequest[]", [0, nil]],
      ["targets", "AdwordsApi::V201008::TrafficEstimatorService::Target[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeError,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Estimate,
    :schema_type => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordEstimate"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "Estimate"),
    :schema_element => [
      ["estimate_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "Estimate.Type")], [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]],
      ["min", "AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate", [0, 1]],
      ["max", "AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordEstimateRequest,
    :schema_type => XSD::QName.new(NsV201008_0, "KeywordEstimateRequest"),
    :schema_basetype => XSD::QName.new(NsV201008_0, "EstimateRequest"),
    :schema_element => [
      ["estimateRequest_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008_0, "EstimateRequest.Type")], [0, 1]],
      ["keyword", "AdwordsApi::V201008::TrafficEstimatorService::Keyword", [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexError,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StatsEstimate,
    :schema_type => XSD::QName.new(NsV201008_0, "StatsEstimate"),
    :schema_element => [
      ["averageCpc", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["totalCost", "AdwordsApi::V201008::TrafficEstimatorService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorError,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorResult,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorResult"),
    :schema_element => [
      ["campaignEstimates", "AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimate[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorSelector,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorSelector"),
    :schema_element => [
      ["campaignEstimateRequests", "AdwordsApi::V201008::TrafficEstimatorService::CampaignEstimateRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::CollectionSizeErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "CollectionSizeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::MatchesRegexErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "MatchesRegexError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008_0, "TrafficEstimatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::Get,
    :schema_name => XSD::QName.new(NsV201008_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::TrafficEstimatorService::TrafficEstimatorResult", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::ApiException,
    :schema_name => XSD::QName.new(NsV201008_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::TrafficEstimatorService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapHeader,
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
    :class => AdwordsApi::V201008::TrafficEstimatorService::SoapResponseHeader,
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
