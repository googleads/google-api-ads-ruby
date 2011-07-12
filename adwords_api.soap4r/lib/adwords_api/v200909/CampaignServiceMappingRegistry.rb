require 'adwords_api/v200909/CampaignService'
require 'soap/mapping'

module AdwordsApi; module V200909; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V200909::CampaignService::PricingModel", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200909, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V200909::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V200909::CampaignService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V200909::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200909, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V200909::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V200909::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V200909::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200909, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V200909::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V200909::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V200909::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::CampaignService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V200909::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V200909::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V200909::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V200909::CampaignService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200909, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V200909::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V200909::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200909, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V200909::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::CampaignService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200909, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200909, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV200909, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200909, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200909, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V200909::CampaignService::PricingModel", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200909, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V200909::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V200909::CampaignService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V200909::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV200909, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V200909::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V200909::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V200909::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V200909::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV200909, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V200909::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V200909::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V200909::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V200909::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::CampaignService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V200909::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V200909::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V200909::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V200909::CampaignService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV200909, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V200909::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V200909::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV200909, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V200909::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::CampaignService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200909, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200909, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV200909, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV200909, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200909, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::CampaignService::CampaignSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::CampaignService::CampaignPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V200909::CampaignService::CampaignOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::CampaignService::CampaignReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V200909::CampaignService::SoapResponseHeader,
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
