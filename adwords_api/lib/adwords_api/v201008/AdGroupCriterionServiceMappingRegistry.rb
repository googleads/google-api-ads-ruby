require 'adwords_api/v201008/AdGroupCriterionService'
require 'soap/mapping'

module AdwordsApi; module V201008; module AdGroupCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201008, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::AdGroupCriterionService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::AdGroupCriterionService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201008::AdGroupCriterionService::MultiplierSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::AdGroupCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::AdGroupCriterionService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::AdGroupCriterionService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201008::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201008::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201008::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201008::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201008::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]],
      ["partialFailureErrors", "AdwordsApi::V201008::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201008::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdwordsApi::V201008::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV201008, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDataStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDeltaStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201008, "MultiplierSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201008, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201008, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV201008, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V201008::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::AdGroupCriterionService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::AdGroupCriterionService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201008::AdGroupCriterionService::MultiplierSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::AdGroupCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::AdGroupCriterionService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::AdGroupCriterionService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201008::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201008::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201008::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::AdGroupCriterionService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201008::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201008::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201008::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]],
      ["partialFailureErrors", "AdwordsApi::V201008::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201008::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdwordsApi::V201008::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V201008::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V201008::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV201008, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDataStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDeltaStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201008, "MultiplierSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::AdGroupCriterionService::AdGroupCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::AdGroupCriterionService::SoapResponseHeader,
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
