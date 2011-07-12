require 'adwords_api/v200909/AdGroupCriterionService'
require 'soap/mapping'

module AdwordsApi; module V200909; module AdGroupCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdwordsApi::V200909::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdwordsApi::V200909::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V200909::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V200909::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V200909::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V200909::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200909, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200909, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200909, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200909, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::AdGroupCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::AdGroupCriterionService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionPage,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV200909, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionSelector,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionIdFilter[]", [0, nil]],
      ["criterionUse", "AdwordsApi::V200909::AdGroupCriterionService::CriterionUse", [0, 1]],
      ["userStatuses", "AdwordsApi::V200909::AdGroupCriterionService::UserStatus[]", [0, nil]],
      ["statsSelector", "AdwordsApi::V200909::AdGroupCriterionService::StatsSelector", [0, 1]],
      ["paging", "AdwordsApi::V200909::AdGroupCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V200909::AdGroupCriterionService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V200909::AdGroupCriterionService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::AdGroupCriterionService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V200909::AdGroupCriterionService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V200909::AdGroupCriterionService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV200909, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::AdGroupCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::AdGroupCriterionService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V200909::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::AdGroupCriterionService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::AdGroupCriterionService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV200909, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V200909::AdGroupCriterionService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200909, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::AdGroupCriterionService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::AdGroupCriterionService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::AdGroupCriterionService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsSelector,
    :schema_type => XSD::QName.new(NsV200909, "StatsSelector"),
    :schema_element => [
      ["dateRange", "AdwordsApi::V200909::AdGroupCriterionService::DateRange", [0, 1]],
      ["statsSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "StatsSelector.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BidSource,
    :schema_type => XSD::QName.new(NsV200909, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::CriterionUse,
    :schema_type => XSD::QName.new(NsV200909, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::UserStatus,
    :schema_type => XSD::QName.new(NsV200909, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::AdGroupCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::AdGroupCriterionService::AdGroupCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapHeader,
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
    :class => AdwordsApi::V200909::AdGroupCriterionService::SoapResponseHeader,
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
