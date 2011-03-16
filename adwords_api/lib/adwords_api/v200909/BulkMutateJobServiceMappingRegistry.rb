require 'adwords_api/v200909/BulkMutateJobService'
require 'soap/mapping'

module AdwordsApi; module V200909; module BulkMutateJobService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV200909 = "https://adwords.google.com/api/adwords/cm/v200909"

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV200909, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V200909::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V200909::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV200909, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V200909::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV200909, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV200909, "AdErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV200909, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV200909, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV200909, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV200909, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV200909, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV200909, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV200909, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV200909, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV200909, "BulkMutateJobErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV200909, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV200909, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV200909, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV200909, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV200909, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV200909, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV200909, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV200909, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV200909, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV200909, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV200909, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV200909, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV200909, "JobErrorReason")]],
      ["loasAuthenticationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::LoasAuthenticationErrorReason", XSD::QName.new(NsV200909, "LoasAuthenticationErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV200909, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV200909, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV200909, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV200909, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV200909, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV200909, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV200909, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV200909, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV200909, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV200909, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV200909, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV200909, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV200909, "RangeErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV200909, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV200909, "RegionCodeErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV200909, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV200909, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV200909, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV200909, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV200909, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV200909, "TargetErrorReason")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV200909, "Audio"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV200909, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V200909::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V200909::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V200909::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV200909, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV200909, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV200909, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V200909::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V200909::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V200909::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V200909::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V200909::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV200909, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V200909::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V200909::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V200909::BulkMutateJobService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V200909::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V200909::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V200909::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV200909, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V200909::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V200909::BulkMutateJobService::PricingModel", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200909, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV200909, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV200909, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V200909::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV200909, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V200909::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200909, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V200909::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V200909::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200909, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV200909, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV200909, "Image"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV200909, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV200909, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV200909, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV200909, "JobError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV200909, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobEvent.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV200909, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV200909, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobStats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200909, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V200909::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V200909::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V200909::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV200909, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V200909::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV200909, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V200909::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV200909, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV200909, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV200909, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV200909, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V200909::BulkMutateJobService::AdGroup", XSD::QName.new(NsV200909, "AdGroup")]],
      ["ad", ["AdwordsApi::V200909::BulkMutateJobService::Ad", XSD::QName.new(NsV200909, "Ad")]],
      ["campaignCriterion", ["AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV200909, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V200909::BulkMutateJobService::Campaign", XSD::QName.new(NsV200909, "Campaign")]],
      ["job", ["AdwordsApi::V200909::BulkMutateJobService::Job", XSD::QName.new(NsV200909, "Job")]],
      ["media", ["AdwordsApi::V200909::BulkMutateJobService::Media", XSD::QName.new(NsV200909, "Media")]],
      ["targetList", ["AdwordsApi::V200909::BulkMutateJobService::TargetList", XSD::QName.new(NsV200909, "TargetList")]],
      ["target", ["AdwordsApi::V200909::BulkMutateJobService::Target", XSD::QName.new(NsV200909, "Target")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV200909, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V200909::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V200909::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV200909, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V200909::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV200909, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200909, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV200909, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V200909::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV200909, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V200909::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V200909::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V200909::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V200909::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV200909, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV200909, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV200909, "Video"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200909, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV200909, "BasicJobStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV200909, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200909, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV200909, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV200909, "EntityId.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "JobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV200909, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "LoasAuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200909, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV200909, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV200909, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200909, "TimeUnit")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV200909, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV200909, "AdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V200909::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V200909::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV200909, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V200909::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V200909::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV200909, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV200909, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Address,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V200909::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV200909, "AdErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV200909, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV200909, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV200909, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV200909, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV200909, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV200909, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV200909, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV200909, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV200909, "BulkMutateJobErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV200909, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV200909, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV200909, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV200909, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV200909, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV200909, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV200909, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV200909, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV200909, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV200909, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV200909, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV200909, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV200909, "JobErrorReason")]],
      ["loasAuthenticationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::LoasAuthenticationErrorReason", XSD::QName.new(NsV200909, "LoasAuthenticationErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV200909, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV200909, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV200909, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV200909, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV200909, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV200909, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV200909, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV200909, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV200909, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV200909, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV200909, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV200909, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV200909, "RangeErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV200909, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV200909, "RegionCodeErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV200909, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV200909, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV200909, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV200909, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV200909, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV200909, "TargetErrorReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV200909, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV200909, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV200909, "Audio"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV200909, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV200909, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V200909::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V200909::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V200909::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV200909, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV200909, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV200909, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V200909::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V200909::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V200909::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV200909, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V200909::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V200909::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV200909, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V200909::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V200909::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V200909::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V200909::BulkMutateJobService::AutoKeywordMatchingStatus", [0, 1]],
      ["stats", "AdwordsApi::V200909::BulkMutateJobService::Stats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V200909::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V200909::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V200909::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV200909, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CityTarget,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV200909, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V200909::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V200909::BulkMutateJobService::PricingModel", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV200909, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V200909::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V200909::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV200909, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV200909, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV200909, "DateError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV200909, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV200909, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV200909, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV200909, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V200909::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV200909, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV200909, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V200909::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV200909, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V200909::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V200909::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V200909::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV200909, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV200909, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV200909, "IdError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV200909, "Image"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV200909, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV200909, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV200909, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV200909, "JobError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV200909, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobEvent.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV200909, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV200909, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V200909::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V200909::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV200909, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "JobStats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV200909, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V200909::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV200909, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV200909, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V200909::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V200909::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V200909::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV200909, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV200909, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV200909, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V200909::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV200909, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V200909::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV200909, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V200909::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV200909, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V200909::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV200909, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV200909, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V200909::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV200909, "Money"),
    :schema_basetype => XSD::QName.new(NsV200909, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV200909, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV200909, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V200909::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V200909::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV200909, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV200909, "NullError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV200909, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV200909, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV200909, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV200909, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V200909::BulkMutateJobService::AdGroup", XSD::QName.new(NsV200909, "AdGroup")]],
      ["ad", ["AdwordsApi::V200909::BulkMutateJobService::Ad", XSD::QName.new(NsV200909, "Ad")]],
      ["campaignCriterion", ["AdwordsApi::V200909::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV200909, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V200909::BulkMutateJobService::Campaign", XSD::QName.new(NsV200909, "Campaign")]],
      ["job", ["AdwordsApi::V200909::BulkMutateJobService::Job", XSD::QName.new(NsV200909, "Job")]],
      ["media", ["AdwordsApi::V200909::BulkMutateJobService::Media", XSD::QName.new(NsV200909, "Media")]],
      ["targetList", ["AdwordsApi::V200909::BulkMutateJobService::TargetList", XSD::QName.new(NsV200909, "TargetList")]],
      ["target", ["AdwordsApi::V200909::BulkMutateJobService::Target", XSD::QName.new(NsV200909, "Target")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV200909, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V200909::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V200909::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV200909, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V200909::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV200909, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV200909, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV200909, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV200909, "Placement"),
    :schema_basetype => XSD::QName.new(NsV200909, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V200909::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV200909, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV200909, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V200909::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV200909, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV200909, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V200909::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV200909, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V200909::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V200909::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V200909::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV200909, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaExceededError,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV200909, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV200909, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V200909::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV200909, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV200909, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V200909::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V200909::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV200909, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV200909, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV200909, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV200909, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV200909, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V200909::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V200909::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V200909::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V200909::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V200909::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV200909, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV200909, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV200909, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV200909, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV200909, "Video"),
    :schema_basetype => XSD::QName.new(NsV200909, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V200909::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V200909::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V200909::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV200909, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV200909, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV200909, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV200909, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV200909, "BasicJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV200909, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV200909, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "BulkMutateJobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV200909, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV200909, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV200909, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV200909, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV200909, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV200909, "EntityId.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV200909, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV200909, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "JobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV200909, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV200909, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "LoasAuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV200909, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV200909, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV200909, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV200909, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV200909, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV200909, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV200909, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV200909, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV200909, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV200909, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "PolicyViolationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV200909, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV200909, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV200909, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV200909, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV200909, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV200909, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV200909, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV200909, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Get,
    :schema_name => XSD::QName.new(NsV200909, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJobSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::GetResponse,
    :schema_name => XSD::QName.new(NsV200909, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJob[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::ApiException,
    :schema_name => XSD::QName.new(NsV200909, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV200909, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V200909::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::Mutate,
    :schema_name => XSD::QName.new(NsV200909, "mutate"),
    :schema_element => [
      ["operation", "AdwordsApi::V200909::BulkMutateJobService::JobOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::MutateResponse,
    :schema_name => XSD::QName.new(NsV200909, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V200909::BulkMutateJobService::BulkMutateJob", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V200909::BulkMutateJobService::SoapResponseHeader,
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
