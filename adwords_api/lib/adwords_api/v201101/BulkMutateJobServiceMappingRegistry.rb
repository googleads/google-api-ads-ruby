require 'adwords_api/v201101/BulkMutateJobService'
require 'soap/mapping'

module AdwordsApi; module V201101; module BulkMutateJobService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201101, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201101::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201101::BulkMutateJobService::Ad", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdExperimentData", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201101::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201101, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201101, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201101::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201101, "AdErrorReason")]],
      ["adExtensionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason", XSD::QName.new(NsV201101, "AdExtensionErrorReason")]],
      ["adExtensionOverrideErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason", XSD::QName.new(NsV201101, "AdExtensionOverrideErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201101, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201101, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201101, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201101, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201101, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201101, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201101, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201101, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201101, "BulkMutateJobErrorReason")]],
      ["campaignAdExtensionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason", XSD::QName.new(NsV201101, "CampaignAdExtensionErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201101, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201101, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201101, "ClientTermsErrorReason")]],
      ["criterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason", XSD::QName.new(NsV201101, "CriterionErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201101, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201101, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201101, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201101, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201101, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201101, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201101, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201101, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201101, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201101, "JobErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201101, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201101, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201101, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201101, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201101, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201101, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201101, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201101, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201101, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201101, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201101, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201101, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201101, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201101, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201101, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201101, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201101, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201101, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201101, "RequiredErrorReason")]],
      ["selectorErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason", XSD::QName.new(NsV201101, "SelectorErrorReason")]],
      ["settingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason", XSD::QName.new(NsV201101, "SettingErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201101, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201101, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201101, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201101, "TargetErrorReason")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201101, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201101, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201101, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201101::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201101::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201101::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201101, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201101, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201101, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201101::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201101::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201101::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobSelector"),
    :schema_element => [
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201101::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201101::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201101, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201101::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201101::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201101::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201101::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201101::BulkMutateJobService::FrequencyCap", [0, 1]],
      ["settings", "AdwordsApi::V201101::BulkMutateJobService::Setting[]", [0, nil]],
      ["networkSetting", "AdwordsApi::V201101::BulkMutateJobService::NetworkSetting", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::BulkMutateJobService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStats,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201101::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201101, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201101::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201101::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201101, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201101, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201101, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201101, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201101, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201101::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201101, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201101, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201101::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201101, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201101::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201101::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201101::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSetting,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting"),
    :schema_basetype => XSD::QName.new(NsV201101, "Setting"),
    :schema_element => [
      ["setting_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Setting.Type")], [0, 1]],
      ["positiveGeoTargetType", "AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingPositiveGeoTargetType", [0, 1]],
      ["negativeGeoTargetType", "AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingNegativeGeoTargetType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201101, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201101, "Image"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201101, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201101::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201101, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201101, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201101, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201101, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobEvent.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201101, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201101, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobStats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201101::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201101::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201101, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201101::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201101::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201101::BulkMutateJobService::MultiplierSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201101, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201101, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201101, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201101, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201101, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201101, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["isCallOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201101, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201101::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201101, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NetworkSetting,
    :schema_type => XSD::QName.new(NsV201101, "NetworkSetting"),
    :schema_element => [
      ["targetGoogleSearch", "SOAP::SOAPBoolean", [0, 1]],
      ["targetSearchNetwork", "SOAP::SOAPBoolean", [0, 1]],
      ["targetContentNetwork", "SOAP::SOAPBoolean", [0, 1]],
      ["targetContentContextual", "SOAP::SOAPBoolean", [0, 1]],
      ["targetPartnerSearchNetwork", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201101, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201101, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201101, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201101, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201101, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201101::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201101, "AdGroup")]],
      ["ad", ["AdwordsApi::V201101::BulkMutateJobService::Ad", XSD::QName.new(NsV201101, "Ad")]],
      ["campaignAdExtension", ["AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension", XSD::QName.new(NsV201101, "CampaignAdExtension")]],
      ["campaignCriterion", ["AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201101, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201101::BulkMutateJobService::Campaign", XSD::QName.new(NsV201101, "Campaign")]],
      ["job", ["AdwordsApi::V201101::BulkMutateJobService::Job", XSD::QName.new(NsV201101, "Job")]],
      ["media", ["AdwordsApi::V201101::BulkMutateJobService::Media", XSD::QName.new(NsV201101, "Media")]],
      ["targetList", ["AdwordsApi::V201101::BulkMutateJobService::TargetList", XSD::QName.new(NsV201101, "TargetList")]],
      ["target", ["AdwordsApi::V201101::BulkMutateJobService::Target", XSD::QName.new(NsV201101, "Target")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201101, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201101::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201101::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201101, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201101::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201101, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201101, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201101::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201101, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::BulkMutateJobService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductAd,
    :schema_type => XSD::QName.new(NsV201101, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201101::BulkMutateJobService::ProductCondition[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201101, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201101::BulkMutateJobService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201101::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201101::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201101, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RealTimeBiddingSetting,
    :schema_type => XSD::QName.new(NsV201101, "RealTimeBiddingSetting"),
    :schema_basetype => XSD::QName.new(NsV201101, "Setting"),
    :schema_element => [
      ["setting_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Setting.Type")], [0, 1]],
      ["optIn", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201101, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201101::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SettingError,
    :schema_type => XSD::QName.new(NsV201101, "SettingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201101, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201101, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201101::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201101, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201101, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201101, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201101::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201101::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201101::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201101::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201101, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201101, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201101::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201101, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::BulkMutateJobService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201101, "Video"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201101, "BasicJobStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201101, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201101, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201101, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201101, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerEligibility.RejectionReason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUse")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201101, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201101, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201101, "EntityId.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDataStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDeltaStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingNegativeGeoTargetType,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting.NegativeGeoTargetType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingPositiveGeoTargetType,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting.PositiveGeoTargetType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "JobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201101, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201101, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201101, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201101, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201101, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201101, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201101, "MultiplierSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201101, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201101, "PositionPreference")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201101, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201101, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SettingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201101, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201101, "TimeUnit")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201101, "UserStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201101, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201101, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201101::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideError,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentData", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201101::BulkMutateJobService::Ad", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdExperimentData", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultipliers", "AdwordsApi::V201101::BulkMutateJobService::AdGroupExperimentBidMultipliers", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201101::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201101, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201101, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201101, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201101::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201101, "AdErrorReason")]],
      ["adExtensionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason", XSD::QName.new(NsV201101, "AdExtensionErrorReason")]],
      ["adExtensionOverrideErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason", XSD::QName.new(NsV201101, "AdExtensionOverrideErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201101, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201101, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201101, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201101, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201101, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201101, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201101, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201101, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201101, "BulkMutateJobErrorReason")]],
      ["campaignAdExtensionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason", XSD::QName.new(NsV201101, "CampaignAdExtensionErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201101, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201101, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201101, "ClientTermsErrorReason")]],
      ["criterionErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason", XSD::QName.new(NsV201101, "CriterionErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201101, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201101, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201101, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201101, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201101, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201101, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201101, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201101, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201101, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201101, "JobErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201101, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201101, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201101, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201101, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201101, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201101, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201101, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201101, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201101, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201101, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201101, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201101, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201101, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201101, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201101, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201101, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201101, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201101, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201101, "RequiredErrorReason")]],
      ["selectorErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason", XSD::QName.new(NsV201101, "SelectorErrorReason")]],
      ["settingErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason", XSD::QName.new(NsV201101, "SettingErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201101, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201101, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201101, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201101, "TargetErrorReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201101, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201101, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201101, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "BidMultiplier"),
    :schema_element => [
      ["multiplier", "SOAP::SOAPDouble", [0, 1]],
      ["multipliedBid", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201101::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201101::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["experimentData", "AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterionExperimentData", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201101::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddableAdGroupCriterionExperimentData,
    :schema_type => XSD::QName.new(NsV201101, "BiddableAdGroupCriterionExperimentData"),
    :schema_element => [
      ["experimentId", "SOAP::SOAPLong", [0, 1]],
      ["experimentDeltaStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus", [0, 1]],
      ["experimentDataStatus", "AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus", [0, 1]],
      ["experimentBidMultiplier", "AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionExperimentBidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201101, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201101, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["bidCeiling", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201101, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201101::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201101::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201101::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobSelector"),
    :schema_element => [
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201101::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201101::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201101, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201101::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201101::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["conversionOptimizerEligibility", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibility", [0, 1]],
      ["campaignStats", "AdwordsApi::V201101::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201101::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201101::BulkMutateJobService::FrequencyCap", [0, 1]],
      ["settings", "AdwordsApi::V201101::BulkMutateJobService::Setting[]", [0, nil]],
      ["networkSetting", "AdwordsApi::V201101::BulkMutateJobService::NetworkSetting", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201101::BulkMutateJobService::AdExtension", [0, 1]],
      ["status", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStats,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201101::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201101, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201101::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201101::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201101::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201101::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibility,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerEligibility"),
    :schema_element => [
      ["eligible", "SOAP::SOAPBoolean", [0, 1]],
      ["rejectionReasons", "AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201101, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201101, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201101, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201101, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201101, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201101, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201101::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201101, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201101, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201101::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201101, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201101::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201101::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201101::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201101, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSetting,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting"),
    :schema_basetype => XSD::QName.new(NsV201101, "Setting"),
    :schema_element => [
      ["setting_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Setting.Type")], [0, 1]],
      ["positiveGeoTargetType", "AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingPositiveGeoTargetType", [0, 1]],
      ["negativeGeoTargetType", "AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingNegativeGeoTargetType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201101, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201101, "Image"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201101, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201101::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["adToCopyImageFrom", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201101, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201101, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201101, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201101, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobEvent.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201101, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201101, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "JobStats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201101, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201101::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201101::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201101, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201101, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]],
      ["positionPreference", "AdwordsApi::V201101::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201101::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupCriterionExperimentBidMultiplier,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupCriterionExperimentBidMultiplier"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionExperimentBidMultiplier"),
    :schema_element => [
      ["adGroupCriterionExperimentBidMultiplier_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionExperimentBidMultiplier.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["multiplierSource", "AdwordsApi::V201101::BulkMutateJobService::MultiplierSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPCAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPCAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]],
      ["maxContentCpcMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ManualCPMAdGroupExperimentBidMultipliers,
    :schema_type => XSD::QName.new(NsV201101, "ManualCPMAdGroupExperimentBidMultipliers"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers"),
    :schema_element => [
      ["adGroupExperimentBidMultipliers_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupExperimentBidMultipliers.Type")], [0, 1]],
      ["maxCpmMultiplier", "AdwordsApi::V201101::BulkMutateJobService::BidMultiplier", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201101, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201101, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201101, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201101, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201101, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201101, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["isCallOnly", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201101, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201101::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201101, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterionUse", "AdwordsApi::V201101::BulkMutateJobService::CriterionUse", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NetworkSetting,
    :schema_type => XSD::QName.new(NsV201101, "NetworkSetting"),
    :schema_element => [
      ["targetGoogleSearch", "SOAP::SOAPBoolean", [0, 1]],
      ["targetSearchNetwork", "SOAP::SOAPBoolean", [0, 1]],
      ["targetContentNetwork", "SOAP::SOAPBoolean", [0, 1]],
      ["targetContentContextual", "SOAP::SOAPBoolean", [0, 1]],
      ["targetPartnerSearchNetwork", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201101, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201101, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201101, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201101, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201101, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201101::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201101, "AdGroup")]],
      ["ad", ["AdwordsApi::V201101::BulkMutateJobService::Ad", XSD::QName.new(NsV201101, "Ad")]],
      ["campaignAdExtension", ["AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtension", XSD::QName.new(NsV201101, "CampaignAdExtension")]],
      ["campaignCriterion", ["AdwordsApi::V201101::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201101, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201101::BulkMutateJobService::Campaign", XSD::QName.new(NsV201101, "Campaign")]],
      ["job", ["AdwordsApi::V201101::BulkMutateJobService::Job", XSD::QName.new(NsV201101, "Job")]],
      ["media", ["AdwordsApi::V201101::BulkMutateJobService::Media", XSD::QName.new(NsV201101, "Media")]],
      ["targetList", ["AdwordsApi::V201101::BulkMutateJobService::TargetList", XSD::QName.new(NsV201101, "TargetList")]],
      ["target", ["AdwordsApi::V201101::BulkMutateJobService::Target", XSD::QName.new(NsV201101, "Target")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201101, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201101::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201101::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201101, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201101::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201101, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201101, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201101, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPA,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPA"),
    :schema_basetype => XSD::QName.new(NsV201101, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPAAdGroupBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PercentCPAAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "PercentCPAAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdGroupCriterionBids.Type")], [0, 1]],
      ["percentCpa", "SOAP::SOAPInt", [0, 1]],
      ["source", "AdwordsApi::V201101::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201101::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201101, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201101, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201101::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201101, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201101, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201101::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::BulkMutateJobService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductAd,
    :schema_type => XSD::QName.new(NsV201101, "ProductAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["promotionLine", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkMutateJobService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductConditionAndGroup,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionAndGroup"),
    :schema_element => [
      ["conditions", "AdwordsApi::V201101::BulkMutateJobService::ProductCondition[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProductExtension,
    :schema_type => XSD::QName.new(NsV201101, "ProductExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["googleBaseCustomerId", "SOAP::SOAPInt", [0, 1]],
      ["advertiserName", "SOAP::SOAPString", [0, 1]],
      ["productSelection", "AdwordsApi::V201101::BulkMutateJobService::ProductConditionAndGroup[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201101, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201101::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201101::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201101::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201101, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RealTimeBiddingSetting,
    :schema_type => XSD::QName.new(NsV201101, "RealTimeBiddingSetting"),
    :schema_basetype => XSD::QName.new(NsV201101, "Setting"),
    :schema_element => [
      ["setting_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Setting.Type")], [0, 1]],
      ["optIn", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201101, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201101::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SettingError,
    :schema_type => XSD::QName.new(NsV201101, "SettingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201101, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201101, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201101::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201101, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201101::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201101::BulkMutateJobService::Money", [0, 1]],
      ["viewThroughConversions", "SOAP::SOAPLong", [0, 1]],
      ["totalConvValue", "SOAP::SOAPLong", [0, 1]],
      ["valuePerConv", "SOAP::SOAPDouble", [0, 1]],
      ["valuePerConvManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["invalidClicks", "SOAP::SOAPLong", [0, 1]],
      ["invalidClickRate", "SOAP::SOAPDouble", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201101, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201101, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201101, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201101, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201101::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201101::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201101::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201101::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201101, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201101, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201101, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201101::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201101, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201101, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::BulkMutateJobService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201101, "Video"),
    :schema_basetype => XSD::QName.new(NsV201101, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["type", "AdwordsApi::V201101::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201101::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201101::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]],
      ["youTubeVideoIdString", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdExtensionOverrideErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdExtensionOverrideError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201101, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201101, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201101, "BasicJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201101, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201101, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201101, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "BulkMutateJobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionApprovalStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtension.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignAdExtensionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignAdExtensionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201101, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201101, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ConversionOptimizerEligibilityRejectionReason,
    :schema_type => XSD::QName.new(NsV201101, "ConversionOptimizerEligibility.RejectionReason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUse,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUse")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201101, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201101, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201101, "EntityId.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExperimentDataStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDataStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ExperimentDeltaStatus,
    :schema_type => XSD::QName.new(NsV201101, "ExperimentDeltaStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201101, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingNegativeGeoTargetType,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting.NegativeGeoTargetType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GeoTargetTypeSettingPositiveGeoTargetType,
    :schema_type => XSD::QName.new(NsV201101, "GeoTargetTypeSetting.PositiveGeoTargetType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "JobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201101, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201101, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201101, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201101, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201101, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201101, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201101, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201101, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MultiplierSource,
    :schema_type => XSD::QName.new(NsV201101, "MultiplierSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201101, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PolicyViolationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201101, "PositionPreference")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201101, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201101, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201101, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SettingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SettingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201101, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201101, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201101, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201101, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201101, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201101, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJobSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJob[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operation", "AdwordsApi::V201101::BulkMutateJobService::JobOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::BulkMutateJobService::BulkMutateJob", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201101, "RequestHeader"),
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
    :class => AdwordsApi::V201101::BulkMutateJobService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201101, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
