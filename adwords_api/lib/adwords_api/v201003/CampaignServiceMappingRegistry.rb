require 'adwords_api/v201003/CampaignService'
require 'soap/mapping'

module AdwordsApi; module V201003; module CampaignService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201003::CampaignService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201003, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201003::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201003::CampaignService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["positionPreference", "AdwordsApi::V201003::CampaignService::PositionPreference", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201003::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV201003, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201003::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201003::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V201003::CampaignService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV201003, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201003::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201003::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V201003::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["campaignStats", "AdwordsApi::V201003::CampaignService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201003::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201003::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201003::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201003::CampaignService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV201003, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V201003::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V201003::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V201003::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201003::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201003::CampaignService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV201003, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201003, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV201003, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreference")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV201003, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201003, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201003::CampaignService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateRange,
    :schema_type => XSD::QName.new(NsV201003, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201003, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201003::CampaignService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201003::CampaignService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["positionPreference", "AdwordsApi::V201003::CampaignService::PositionPreference", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Paging,
    :schema_type => XSD::QName.new(NsV201003, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201003, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201003::CampaignService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::CampaignService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::CampaignService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201003::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Budget,
    :schema_type => XSD::QName.new(NsV201003, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201003::CampaignService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201003::CampaignService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201003::CampaignService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V201003::CampaignService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::CampaignService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::CampaignService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Campaign,
    :schema_type => XSD::QName.new(NsV201003, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::CampaignService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201003::CampaignService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201003::CampaignService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201003::CampaignService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V201003::CampaignService::AutoKeywordMatchingStatus", [0, 1]],
      ["campaignStats", "AdwordsApi::V201003::CampaignService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201003::CampaignService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201003::CampaignService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::CampaignService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201003::CampaignService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201003::CampaignService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignPage,
    :schema_type => XSD::QName.new(NsV201003, "CampaignPage"),
    :schema_basetype => XSD::QName.new(NsV201003, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Page.Type")], [0, 1]],
      ["totalBudget", "AdwordsApi::V201003::CampaignService::Budget", [0, 1]],
      ["entries", "AdwordsApi::V201003::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignReturnValue,
    :schema_type => XSD::QName.new(NsV201003, "CampaignReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201003::CampaignService::Campaign[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignSelector,
    :schema_type => XSD::QName.new(NsV201003, "CampaignSelector"),
    :schema_element => [
      ["ids", "SOAP::SOAPLong[]", [0, nil]],
      ["campaignStatuses", "AdwordsApi::V201003::CampaignService::CampaignStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201003::CampaignService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201003::CampaignService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV201003, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201003, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Level,
    :schema_type => XSD::QName.new(NsV201003, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreference")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::PricingModel,
    :schema_type => XSD::QName.new(NsV201003, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201003, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::CampaignService::CampaignSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::CampaignService::CampaignPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::CampaignService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201003::CampaignService::CampaignOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::CampaignService::CampaignReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201003, "RequestHeader"),
    :schema_element => [
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["clientCustomerId", "SOAP::SOAPString", [0, 1]],
      ["clientEmail", "SOAP::SOAPString", [0, 1]],
      ["developerToken", "SOAP::SOAPString", [0, 1]],
      ["userAgent", "SOAP::SOAPString", [0, 1]],
      ["validateOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::CampaignService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201003, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
