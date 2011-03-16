require 'adwords_api/v201008/BulkMutateJobService'
require 'soap/mapping'

module AdwordsApi; module V201008; module BulkMutateJobService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201008, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201008::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201008::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201008, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201008::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201008, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201008, "AdErrorReason")]],
      ["adExtensionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason", XSD::QName.new(NsV201008, "AdExtensionErrorReason")]],
      ["adExtensionOverrideErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason", XSD::QName.new(NsV201008, "AdExtensionOverrideErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201008, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201008, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201008, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201008, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201008, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201008, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201008, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201008, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201008, "BulkMutateJobErrorReason")]],
      ["campaignAdExtensionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason", XSD::QName.new(NsV201008, "CampaignAdExtensionErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201008, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201008, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201008, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201008, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201008, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201008, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201008, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201008, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201008, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201008, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201008, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201008, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201008, "JobErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201008, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201008, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201008, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201008, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201008, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201008, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201008, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201008, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201008, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201008, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201008, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201008, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201008, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201008, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201008, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201008, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201008, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201008, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201008, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201008, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201008, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201008, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201008, "TargetErrorReason")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201008, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201008, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201008::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201008::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201008::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201008, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201008, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201008, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201008::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201008::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201008::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeJobsSubmittedByOtherUsers", "SOAP::SOAPBoolean", [0, 1]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201008::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201008::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201008, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201008::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201008::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201008::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201008::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201008::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201008::BulkMutateJobService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201008::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201008::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201008::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201008, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201008, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201008, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201008::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201008, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201008::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201008, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201008::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201008::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201008, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201008, "Image"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201008, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201008, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201008, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201008, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201008, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobEvent.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201008, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201008, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobStats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201008, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V201008::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201008, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201008::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201008::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201008, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201008, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201008, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201008::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201008::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201008::BulkMutateJobService::MultiplierSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201008, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201008, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201008, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201008, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201008, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201008, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201008, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201008::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201008, "AdGroup")]],
      ["ad", ["AdwordsApi::V201008::BulkMutateJobService::Ad", XSD::QName.new(NsV201008, "Ad")]],
      ["campaignAdExtension", ["AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension", XSD::QName.new(NsV201008, "CampaignAdExtension")]],
      ["campaignCriterion", ["AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201008, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201008::BulkMutateJobService::Campaign", XSD::QName.new(NsV201008, "Campaign")]],
      ["job", ["AdwordsApi::V201008::BulkMutateJobService::Job", XSD::QName.new(NsV201008, "Job")]],
      ["media", ["AdwordsApi::V201008::BulkMutateJobService::Media", XSD::QName.new(NsV201008, "Media")]],
      ["targetList", ["AdwordsApi::V201008::BulkMutateJobService::TargetList", XSD::QName.new(NsV201008, "TargetList")]],
      ["target", ["AdwordsApi::V201008::BulkMutateJobService::Target", XSD::QName.new(NsV201008, "Target")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201008, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201008::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201008::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201008, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201008::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201008, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201008, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::BulkMutateJobService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductAd,
    :schema_type => XSD::QName.new(NsV201008, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201008::BulkMutateJobService::ProductCondition[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201008, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201008::BulkMutateJobService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201008, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201008, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201008::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201008, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201008, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201008::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201008, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201008::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201008::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201008::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201008::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201008, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201008, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201008::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201008, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::BulkMutateJobService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201008, "Video"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201008, "BasicJobStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201008, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201008, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility.RejectionReason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201008, "EntityId.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDataStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDeltaStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "JobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201008, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201008, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201008, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201008, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201008, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201008, "MultiplierSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreference")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201008, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201008, "TimeUnit")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201008, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201008, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201008::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201008::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201008, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201008::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201008::BulkMutateJobService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201008::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201008, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201008, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201008::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201008, "AdErrorReason")]],
      ["adExtensionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason", XSD::QName.new(NsV201008, "AdExtensionErrorReason")]],
      ["adExtensionOverrideErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason", XSD::QName.new(NsV201008, "AdExtensionOverrideErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201008, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201008, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201008, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201008, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201008, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201008, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201008, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201008, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201008, "BulkMutateJobErrorReason")]],
      ["campaignAdExtensionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason", XSD::QName.new(NsV201008, "CampaignAdExtensionErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201008, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201008, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201008, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201008, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201008, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201008, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201008, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201008, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201008, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201008, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201008, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201008, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201008, "JobErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201008, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201008, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201008, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201008, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201008, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201008, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201008, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201008, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201008, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201008, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201008, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201008, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201008, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201008, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201008, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201008, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201008, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201008, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201008, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201008, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201008, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201008, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201008, "TargetErrorReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201008, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201008, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201008, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201008::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201008::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201008::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201008, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201008, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201008, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201008, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201008::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201008::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201008::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeJobsSubmittedByOtherUsers", "SOAP::SOAPBoolean", [0, 1]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201008::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201008::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201008, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201008::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201008::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201008::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201008::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201008::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201008::BulkMutateJobService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201008::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201008::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201008::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201008::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201008::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201008, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201008, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201008, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201008, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201008, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201008, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201008, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201008::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201008, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201008, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201008::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201008, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201008::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201008::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201008::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201008, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201008, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201008, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201008, "Image"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201008, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201008, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201008, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201008, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201008, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobEvent.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201008, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201008, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "JobStats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201008, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201008, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V201008::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201008, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201008::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201008::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201008, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201008, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201008, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201008, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201008::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201008::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201008::BulkMutateJobService::MultiplierSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201008, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201008::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201008, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201008, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201008::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201008, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201008, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201008, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201008::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201008, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201008, "Money"),
    :schema_basetype => XSD::QName.new(NsV201008, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201008::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201008, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201008, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201008, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201008, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201008, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201008::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201008, "AdGroup")]],
      ["ad", ["AdwordsApi::V201008::BulkMutateJobService::Ad", XSD::QName.new(NsV201008, "Ad")]],
      ["campaignAdExtension", ["AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtension", XSD::QName.new(NsV201008, "CampaignAdExtension")]],
      ["campaignCriterion", ["AdwordsApi::V201008::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201008, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201008::BulkMutateJobService::Campaign", XSD::QName.new(NsV201008, "Campaign")]],
      ["job", ["AdwordsApi::V201008::BulkMutateJobService::Job", XSD::QName.new(NsV201008, "Job")]],
      ["media", ["AdwordsApi::V201008::BulkMutateJobService::Media", XSD::QName.new(NsV201008, "Media")]],
      ["targetList", ["AdwordsApi::V201008::BulkMutateJobService::TargetList", XSD::QName.new(NsV201008, "TargetList")]],
      ["target", ["AdwordsApi::V201008::BulkMutateJobService::Target", XSD::QName.new(NsV201008, "Target")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201008, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201008::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201008::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201008, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201008::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201008, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201008, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201008, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201008::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201008::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201008, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201008, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201008::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201008, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201008::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::BulkMutateJobService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductAd,
    :schema_type => XSD::QName.new(NsV201008, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::BulkMutateJobService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201008::BulkMutateJobService::ProductCondition[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201008, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201008::BulkMutateJobService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201008, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201008::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201008::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201008::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201008, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201008, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201008::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201008, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201008, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201008::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201008, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201008::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201008::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201008, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201008, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201008, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201008, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201008::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201008::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201008::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201008::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201008, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201008, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201008, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201008::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201008, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201008, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::BulkMutateJobService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201008, "Video"),
    :schema_basetype => XSD::QName.new(NsV201008, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201008::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201008::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201008::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdExtensionOverrideError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201008, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201008, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201008, "BasicJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201008, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201008, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "BulkMutateJobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtension.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignAdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201008, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201008, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201008, "ConversionOptimizerEligibility.RejectionReason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201008, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201008, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201008, "EntityId.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDataStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201008, "ExperimentDeltaStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201008, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "JobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201008, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201008, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201008, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201008, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201008, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201008, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201008, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201008, "MultiplierSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201008, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201008, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PolicyViolationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201008, "PositionPreference")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201008, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201008, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201008, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201008, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201008, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201008, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201008, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJobSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJob[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operation", "AdwordsApi::V201008::BulkMutateJobService::JobOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::BulkMutateJobService::BulkMutateJob", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201008::BulkMutateJobService::SoapResponseHeader,
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
