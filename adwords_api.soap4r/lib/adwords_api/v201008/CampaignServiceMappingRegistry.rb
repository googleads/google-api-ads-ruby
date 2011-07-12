require 'adwords_api/v201008/CampaignService'
require 'soap/mapping'

module AdwordsApi; module V201008; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201008::CampaignService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201008, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201008::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201008::CampaignService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201008::CampaignService::PositionPreference", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV201008, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201008::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201008::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201008::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV201008, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201008::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201008::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201008::CampaignService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201008::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201008::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201008::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV201008, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V201008::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V201008::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV201008, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V201008::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::CampaignService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201008, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility.RejectionReason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV201008, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreference")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV201008, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201008, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201008::CampaignService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201008, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201008::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201008::CampaignService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201008::CampaignService::PositionPreference", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV201008, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201008::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201008::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201008::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201008::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV201008, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201008::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201008::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201008::CampaignService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201008::CampaignService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201008::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201008::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201008::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV201008, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V201008::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V201008::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV201008, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V201008::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::CampaignService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201008, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility.RejectionReason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV201008, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreference")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV201008, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201008, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::CampaignService::CampaignSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::CampaignService::CampaignPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::CampaignService::CampaignOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::CampaignService::CampaignReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignService::SoapResponseHeader,
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
