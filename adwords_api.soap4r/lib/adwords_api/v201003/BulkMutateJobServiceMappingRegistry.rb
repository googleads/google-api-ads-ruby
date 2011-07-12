require 'adwords_api/v201003/BulkMutateJobService'
require 'soap/mapping'

module AdwordsApi; module V201003; module BulkMutateJobService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201003 = "https://adwords.google.com/api/adwords/cm/v201003"

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201003, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201003::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201003::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201003, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201003::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201003::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201003, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
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
    :class => AdwordsApi::V201003::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201003::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201003, "AdErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201003, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201003, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201003, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201003, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201003, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201003, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201003, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201003, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201003, "BulkMutateJobErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201003, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201003, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201003, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201003, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201003, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201003, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201003, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201003, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201003, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201003, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201003, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201003, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201003, "JobErrorReason")]],
      ["loasAuthenticationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::LoasAuthenticationErrorReason", XSD::QName.new(NsV201003, "LoasAuthenticationErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201003, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201003, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201003, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201003, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201003, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201003, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201003, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201003, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201003, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201003, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201003, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201003, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201003, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201003, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201003, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201003, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201003, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201003, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201003, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201003, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201003, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201003, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201003, "TargetErrorReason")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201003, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201003, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201003::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201003::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201003::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201003, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201003, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201003, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201003::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201003::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201003::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201003::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201003, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201003::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201003::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V201003::BulkMutateJobService::AutoKeywordMatchingStatus", [0, 1]],
      ["campaignStats", "AdwordsApi::V201003::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201003::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201003::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201003::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201003, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201003::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201003::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201003, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201003::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201003, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201003, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201003::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201003, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201003::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201003, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201003::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201003::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201003::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201003, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201003, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201003, "Image"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201003, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201003, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201003, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201003, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201003, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobEvent.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201003, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201003, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobStats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201003::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201003, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V201003::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201003::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201003::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201003, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201003, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["positionPreference", "AdwordsApi::V201003::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201003::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201003::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201003::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201003, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201003, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201003, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201003::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201003, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201003, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201003, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201003, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201003::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201003, "AdGroup")]],
      ["ad", ["AdwordsApi::V201003::BulkMutateJobService::Ad", XSD::QName.new(NsV201003, "Ad")]],
      ["campaignCriterion", ["AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201003, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201003::BulkMutateJobService::Campaign", XSD::QName.new(NsV201003, "Campaign")]],
      ["job", ["AdwordsApi::V201003::BulkMutateJobService::Job", XSD::QName.new(NsV201003, "Job")]],
      ["media", ["AdwordsApi::V201003::BulkMutateJobService::Media", XSD::QName.new(NsV201003, "Media")]],
      ["targetList", ["AdwordsApi::V201003::BulkMutateJobService::TargetList", XSD::QName.new(NsV201003, "TargetList")]],
      ["target", ["AdwordsApi::V201003::BulkMutateJobService::Target", XSD::QName.new(NsV201003, "Target")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201003, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201003::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201003::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201003, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201003::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201003, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201003, "LocationOverrideInfo")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201003::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201003::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201003::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201003, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201003, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201003::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201003, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201003, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201003::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201003, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201003::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201003::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201003::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201003::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201003::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201003, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201003, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201003::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201003, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201003, "Video"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "Ad.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride.ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroup.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd.Status")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdServingOptimizationStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "ApprovalStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV201003, "AutoKeywordMatchingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201003, "BasicJobStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201003, "BidSource")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetDeliveryMethod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetPeriod")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201003, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201003, "ConversionDeduplicationMode")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBidType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201003, "EntityId.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "IdError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ImageError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "JobError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201003, "Level")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "LoasAuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension.Source")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201003, "LocationOverrideInfo.RadiusUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201003, "MarkupLanguageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityState")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaSubType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MimeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201003, "Media.Size")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "MediaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreference")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201003, "PricingModel")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "ServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "SystemServingStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201003, "TimeUnit")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201003, "UserStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201003, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Ad,
    :schema_type => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdError,
    :schema_type => XSD::QName.new(NsV201003, "AdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtension,
    :schema_type => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverride,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride"),
    :schema_element => [
      ["adId", "SOAP::SOAPLong", [0, 1]],
      ["adExtension", "AdwordsApi::V201003::BulkMutateJobService::AdExtension", [0, 1]],
      ["overrideInfo", "AdwordsApi::V201003::BulkMutateJobService::OverrideInfo", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideApprovalStatus", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStats,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverrideStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroup,
    :schema_type => XSD::QName.new(NsV201003, "AdGroup"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["campaignName", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdGroupStatus", [0, 1]],
      ["bids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAd,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["ad", "AdwordsApi::V201003::BulkMutateJobService::Ad", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAdStatus", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::AdStats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroupAd", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion", [0, 1]],
      ["exemptionRequests", "AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupOperation,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::AdGroup", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceError,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupServiceError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdScheduleTarget,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["dayOfWeek", "AdwordsApi::V201003::BulkMutateJobService::DayOfWeek", [0, 1]],
      ["startHour", "SOAP::SOAPInt", [0, 1]],
      ["startMinute", "AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["endHour", "SOAP::SOAPInt", [0, 1]],
      ["endMinute", "AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour", [0, 1]],
      ["bidMultiplier", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdScheduleTargetList,
    :schema_type => XSD::QName.new(NsV201003, "AdScheduleTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::AdScheduleTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdStats,
    :schema_type => XSD::QName.new(NsV201003, "AdStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]],
      ["percentServed", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Address,
    :schema_type => XSD::QName.new(NsV201003, "Address"),
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
    :class => AdwordsApi::V201003::BulkMutateJobService::AgeTarget,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["age", "AdwordsApi::V201003::BulkMutateJobService::AgeTargetAge", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ApiErrorReason"),
    :schema_element => [ :choice,
      ["adErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdErrorReason", XSD::QName.new(NsV201003, "AdErrorReason")]],
      ["adGroupAdErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason", XSD::QName.new(NsV201003, "AdGroupAdErrorReason")]],
      ["adGroupCriterionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason", XSD::QName.new(NsV201003, "AdGroupCriterionErrorReason")]],
      ["adGroupServiceErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason", XSD::QName.new(NsV201003, "AdGroupServiceErrorReason")]],
      ["authenticationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason", XSD::QName.new(NsV201003, "AuthenticationErrorReason")]],
      ["authorizationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason", XSD::QName.new(NsV201003, "AuthorizationErrorReason")]],
      ["biddingErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason", XSD::QName.new(NsV201003, "BiddingErrorReason")]],
      ["biddingTransitionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason", XSD::QName.new(NsV201003, "BiddingTransitionErrorReason")]],
      ["budgetErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason", XSD::QName.new(NsV201003, "BudgetErrorReason")]],
      ["bulkMutateJobErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason", XSD::QName.new(NsV201003, "BulkMutateJobErrorReason")]],
      ["campaignCriterionErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason", XSD::QName.new(NsV201003, "CampaignCriterionErrorReason")]],
      ["campaignErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason", XSD::QName.new(NsV201003, "CampaignErrorReason")]],
      ["clientTermsErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason", XSD::QName.new(NsV201003, "ClientTermsErrorReason")]],
      ["databaseErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason", XSD::QName.new(NsV201003, "DatabaseErrorReason")]],
      ["dateErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DateErrorReason", XSD::QName.new(NsV201003, "DateErrorReason")]],
      ["distinctErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason", XSD::QName.new(NsV201003, "DistinctErrorReason")]],
      ["entityAccessDeniedReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason", XSD::QName.new(NsV201003, "EntityAccessDeniedReason")]],
      ["entityCountLimitExceededReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", XSD::QName.new(NsV201003, "EntityCountLimitExceededReason")]],
      ["entityNotFoundReason", ["AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason", XSD::QName.new(NsV201003, "EntityNotFoundReason")]],
      ["idErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::IdErrorReason", XSD::QName.new(NsV201003, "IdErrorReason")]],
      ["imageErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason", XSD::QName.new(NsV201003, "ImageErrorReason")]],
      ["internalApiErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason", XSD::QName.new(NsV201003, "InternalApiErrorReason")]],
      ["jobErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::JobErrorReason", XSD::QName.new(NsV201003, "JobErrorReason")]],
      ["loasAuthenticationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::LoasAuthenticationErrorReason", XSD::QName.new(NsV201003, "LoasAuthenticationErrorReason")]],
      ["mediaErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason", XSD::QName.new(NsV201003, "MediaErrorReason")]],
      ["newEntityCreationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason", XSD::QName.new(NsV201003, "NewEntityCreationErrorReason")]],
      ["notEmptyErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason", XSD::QName.new(NsV201003, "NotEmptyErrorReason")]],
      ["notWhitelistedErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason", XSD::QName.new(NsV201003, "NotWhitelistedErrorReason")]],
      ["nullErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::NullErrorReason", XSD::QName.new(NsV201003, "NullErrorReason")]],
      ["operationAccessDeniedReason", ["AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason", XSD::QName.new(NsV201003, "OperationAccessDeniedReason")]],
      ["operatorErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason", XSD::QName.new(NsV201003, "OperatorErrorReason")]],
      ["pagingErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason", XSD::QName.new(NsV201003, "PagingErrorReason")]],
      ["policyViolationErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorReason", XSD::QName.new(NsV201003, "PolicyViolationErrorReason")]],
      ["quotaCheckErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason", XSD::QName.new(NsV201003, "QuotaCheckErrorReason")]],
      ["quotaErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason", XSD::QName.new(NsV201003, "QuotaErrorReason")]],
      ["quotaExceededErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::QuotaExceededErrorReason", XSD::QName.new(NsV201003, "QuotaExceededErrorReason")]],
      ["rangeErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason", XSD::QName.new(NsV201003, "RangeErrorReason")]],
      ["rateExceededErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason", XSD::QName.new(NsV201003, "RateExceededErrorReason")]],
      ["readOnlyErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason", XSD::QName.new(NsV201003, "ReadOnlyErrorReason")]],
      ["regionCodeErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason", XSD::QName.new(NsV201003, "RegionCodeErrorReason")]],
      ["rejectedErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason", XSD::QName.new(NsV201003, "RejectedErrorReason")]],
      ["requestErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason", XSD::QName.new(NsV201003, "RequestErrorReason")]],
      ["requiredErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason", XSD::QName.new(NsV201003, "RequiredErrorReason")]],
      ["sizeLimitErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason", XSD::QName.new(NsV201003, "SizeLimitErrorReason")]],
      ["statsQueryErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason", XSD::QName.new(NsV201003, "StatsQueryErrorReason")]],
      ["stringLengthErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason", XSD::QName.new(NsV201003, "StringLengthErrorReason")]],
      ["targetErrorReason", ["AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason", XSD::QName.new(NsV201003, "TargetErrorReason")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApiException,
    :schema_type => XSD::QName.new(NsV201003, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201003, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Audio,
    :schema_type => XSD::QName.new(NsV201003, "Audio"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BatchFailureResult,
    :schema_type => XSD::QName.new(NsV201003, "BatchFailureResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["operationIndexInBatch", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Bid,
    :schema_type => XSD::QName.new(NsV201003, "Bid"),
    :schema_element => [
      ["amount", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddableAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "BiddableAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]],
      ["userStatus", "AdwordsApi::V201003::BulkMutateJobService::UserStatus", [0, 1]],
      ["systemServingStatus", "AdwordsApi::V201003::BulkMutateJobService::SystemServingStatus", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::ApprovalStatus", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]],
      ["bids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionBids", [0, 1]],
      ["firstPageCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["qualityInfo", "AdwordsApi::V201003::BulkMutateJobService::QualityInfo", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::Stats", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionError,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BillingSummary,
    :schema_type => XSD::QName.new(NsV201003, "BillingSummary"),
    :schema_element => [
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnits", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Budget,
    :schema_type => XSD::QName.new(NsV201003, "Budget"),
    :schema_element => [
      ["period", "AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetPeriod", [0, 1]],
      ["amount", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["deliveryMethod", "AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetDeliveryMethod", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetError,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["bidCeiling", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["proxyKeywordMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["proxySiteMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "BudgetOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["proxyBid", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJob"),
    :schema_basetype => XSD::QName.new(NsV201003, "Job"),
    :schema_element => [
      ["customerJobKey", "SOAP::SOAPString", [0, 1]],
      ["context", "AdwordsApi::V201003::BulkMutateJobService::JobContext", [0, 1]],
      ["failureReason", "AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason", [0, 1]],
      ["stats", "AdwordsApi::V201003::BulkMutateJobService::JobStats", [0, 1]],
      ["billingSummary", "AdwordsApi::V201003::BulkMutateJobService::BillingSummary", [0, 1]],
      ["job_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Job.Type")], [0, 1]],
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["policy", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobPolicy", [0, 1]],
      ["request", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateRequest", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus", [0, 1]],
      ["history", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobEvent[]", [0, nil]],
      ["result", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateResult", [0, 1]],
      ["numRequestParts", "SOAP::SOAPInt", [0, 1]],
      ["numRequestPartsReceived", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobError,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobEvent,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobEvent"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobEvent.Type")], [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobPolicy,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobPolicy"),
    :schema_element => [
      ["prerequisiteJobIds", "SOAP::SOAPLong[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobSelector,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobSelector"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobSelector"),
    :schema_element => [
      ["customerJobKeys", "SOAP::SOAPString[]", [0, nil]],
      ["includeHistory", "SOAP::SOAPBoolean", [0, 1]],
      ["includeStats", "SOAP::SOAPBoolean", [0, 1]],
      ["jobSelector_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobSelector.Type")], [0, 1]],
      ["jobIds", "SOAP::SOAPLong[]", [0, nil]],
      ["jobStatuses", "AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus[]", [0, nil]],
      ["resultPartIndex", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobStats,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobStats.Type")], [0, 1]],
      ["numOperations", "SOAP::SOAPInt", [0, 1]],
      ["numFailedOperations", "SOAP::SOAPInt", [0, 1]],
      ["numUnprocessedOperations", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateRequest,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateRequest"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreams", "AdwordsApi::V201003::BulkMutateJobService::OperationStream[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateResult,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateResult"),
    :schema_element => [
      ["partIndex", "SOAP::SOAPInt", [0, 1]],
      ["operationStreamResults", "AdwordsApi::V201003::BulkMutateJobService::OperationStreamResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Campaign,
    :schema_type => XSD::QName.new(NsV201003, "Campaign"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201003::BulkMutateJobService::CampaignStatus", [0, 1]],
      ["servingStatus", "AdwordsApi::V201003::BulkMutateJobService::ServingStatus", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["budget", "AdwordsApi::V201003::BulkMutateJobService::Budget", [0, 1]],
      ["biddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["autoKeywordMatchingStatus", "AdwordsApi::V201003::BulkMutateJobService::AutoKeywordMatchingStatus", [0, 1]],
      ["campaignStats", "AdwordsApi::V201003::BulkMutateJobService::CampaignStats", [0, 1]],
      ["adServingOptimizationStatus", "AdwordsApi::V201003::BulkMutateJobService::AdServingOptimizationStatus", [0, 1]],
      ["frequencyCap", "AdwordsApi::V201003::BulkMutateJobService::FrequencyCap", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignError,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["biddingTransition", "AdwordsApi::V201003::BulkMutateJobService::BiddingTransition", [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::Campaign", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignStats,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStats"),
    :schema_basetype => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignTargetOperation,
    :schema_type => XSD::QName.new(NsV201003, "CampaignTargetOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::TargetList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CityTarget,
    :schema_type => XSD::QName.new(NsV201003, "CityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["cityName", "SOAP::SOAPString", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201003, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201003::BulkMutateJobService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizer,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizer"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["pricingModel", "AdwordsApi::V201003::BulkMutateJobService::PricingModel", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["targetCpa", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["conversionOptimizerBidType", "AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType", [0, 1]],
      ["deduplicationMode", "AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBiddingTransition,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBiddingTransition"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingTransition"),
    :schema_element => [
      ["targetBiddingStrategy", "AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy", [0, 1]],
      ["explicitAdGroupBids", "AdwordsApi::V201003::BulkMutateJobService::AdGroupBids", [0, 1]],
      ["biddingTransition_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingTransition.Type")], [0, 1]],
      ["useSavedBids", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CountryTarget,
    :schema_type => XSD::QName.new(NsV201003, "CountryTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Criterion,
    :schema_type => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CriterionPolicyError,
    :schema_type => XSD::QName.new(NsV201003, "CriterionPolicyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DateError,
    :schema_type => XSD::QName.new(NsV201003, "DateError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DateErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DemographicTargetList,
    :schema_type => XSD::QName.new(NsV201003, "DemographicTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::DemographicTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DeprecatedAd,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201003::BulkMutateJobService::DeprecatedAdType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Dimensions,
    :schema_type => XSD::QName.new(NsV201003, "Dimensions"),
    :schema_element => [
      ["width", "SOAP::SOAPInt", [0, 1]],
      ["height", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DistinctError,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201003, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityId,
    :schema_type => XSD::QName.new(NsV201003, "EntityId"),
    :schema_element => [
      ["type", "AdwordsApi::V201003::BulkMutateJobService::EntityIdType", [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest,
    :schema_type => XSD::QName.new(NsV201003, "ExemptionRequest"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::FailureResult,
    :schema_type => XSD::QName.new(NsV201003, "FailureResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["cause", "AdwordsApi::V201003::BulkMutateJobService::ApiException", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::FrequencyCap,
    :schema_type => XSD::QName.new(NsV201003, "FrequencyCap"),
    :schema_element => [
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["timeUnit", "AdwordsApi::V201003::BulkMutateJobService::TimeUnit", [0, 1]],
      ["level", "AdwordsApi::V201003::BulkMutateJobService::Level", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GenderTarget,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "DemographicTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["bidModifier", "SOAP::SOAPInt", [0, 1]],
      ["gender", "AdwordsApi::V201003::BulkMutateJobService::GenderTargetGender", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GeoPoint,
    :schema_type => XSD::QName.new(NsV201003, "GeoPoint"),
    :schema_element => [
      ["latitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]],
      ["longitudeInMicroDegrees", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GeoTargetList,
    :schema_type => XSD::QName.new(NsV201003, "GeoTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::GeoTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::IdError,
    :schema_type => XSD::QName.new(NsV201003, "IdError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::IdErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Image,
    :schema_type => XSD::QName.new(NsV201003, "Image"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["data", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageAd,
    :schema_type => XSD::QName.new(NsV201003, "ImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["image", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageError,
    :schema_type => XSD::QName.new(NsV201003, "ImageError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobContext,
    :schema_type => XSD::QName.new(NsV201003, "JobContext"),
    :schema_element => [
      ["authenticatedUserEmail", "SOAP::SOAPString", [0, 1]],
      ["effectiveCustomerId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobError,
    :schema_type => XSD::QName.new(NsV201003, "JobError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::JobErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobEvent,
    :schema_type => XSD::QName.new(NsV201003, "JobEvent"),
    :schema_element => [
      ["dateTime", "SOAP::SOAPString", [0, 1]],
      ["jobEvent_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobEvent.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobOperation,
    :schema_type => XSD::QName.new(NsV201003, "JobOperation"),
    :schema_basetype => XSD::QName.new(NsV201003, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201003::BulkMutateJobService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201003::BulkMutateJobService::Job", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobStats,
    :schema_type => XSD::QName.new(NsV201003, "JobStats"),
    :schema_element => [
      ["progressPercent", "SOAP::SOAPInt", [0, 1]],
      ["pendingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["processingTimeMillis", "SOAP::SOAPLong", [0, 1]],
      ["jobStats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "JobStats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Keyword,
    :schema_type => XSD::QName.new(NsV201003, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201003::BulkMutateJobService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["languageCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LanguageTargetList,
    :schema_type => XSD::QName.new(NsV201003, "LanguageTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::LanguageTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocalBusinessAd,
    :schema_type => XSD::QName.new(NsV201003, "LocalBusinessAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
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
      ["target", "AdwordsApi::V201003::BulkMutateJobService::ProximityTarget", [0, 1]],
      ["businessImage", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]],
      ["icon", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["address", "AdwordsApi::V201003::BulkMutateJobService::Address", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint", [0, 1]],
      ["encodedLocation", "SOAP::SOAPBase64", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["source", "AdwordsApi::V201003::BulkMutateJobService::LocationExtensionSource", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["imageMediaId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfo,
    :schema_type => XSD::QName.new(NsV201003, "LocationOverrideInfo"),
    :schema_element => [
      ["radius", "SOAP::SOAPInt", [0, 1]],
      ["radiusUnits", "AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfoRadiusUnits", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationSyncExtension,
    :schema_type => XSD::QName.new(NsV201003, "LocationSyncExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["authToken", "SOAP::SOAPString", [0, 1]],
      ["iconMediaId", "SOAP::SOAPLong", [0, 1]],
      ["shouldSyncUrl", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LongValue,
    :schema_type => XSD::QName.new(NsV201003, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201003, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LostResult,
    :schema_type => XSD::QName.new(NsV201003, "LostResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPC,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPC"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]],
      ["positionPreference", "AdwordsApi::V201003::BulkMutateJobService::PositionPreference", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPCAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["keywordMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["keywordContentMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["siteMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPCAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPCAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201003::BulkMutateJobService::BidSource", [0, 1]],
      ["positionPreferenceBids", "AdwordsApi::V201003::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids", [0, 1]],
      ["enhancedCpcEnabled", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPM,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPM"),
    :schema_basetype => XSD::QName.new(NsV201003, "BiddingStrategy"),
    :schema_element => [
      ["biddingStrategy_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "BiddingStrategy.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPMAdGroupBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupBids"),
    :schema_element => [
      ["adGroupBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ManualCPMAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "ManualCPMAdGroupCriterionBids"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterionBids"),
    :schema_element => [
      ["adGroupCriterionBids_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterionBids.Type")], [0, 1]],
      ["maxCpm", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["bidSource", "AdwordsApi::V201003::BulkMutateJobService::BidSource", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media,
    :schema_type => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaError,
    :schema_type => XSD::QName.new(NsV201003, "MediaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityType", [0, 1]],
      ["value", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityState", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_DimensionsMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry,
    :schema_type => XSD::QName.new(NsV201003, "Media_Size_StringMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201003::BulkMutateJobService::MediaSize", [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MetroTarget,
    :schema_type => XSD::QName.new(NsV201003, "MetroTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["metroCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["markupLanguages", "AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["businessName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileCarrierTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobileCarrierTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["carrierName", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileExtension,
    :schema_type => XSD::QName.new(NsV201003, "MobileExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["phoneNumber", "SOAP::SOAPString", [0, 1]],
      ["countryCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileImageAd,
    :schema_type => XSD::QName.new(NsV201003, "MobileImageAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["markupLanguages", "AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType[]", [0, nil]],
      ["mobileCarriers", "SOAP::SOAPString[]", [0, nil]],
      ["image", "AdwordsApi::V201003::BulkMutateJobService::Image", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobilePlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "MobilePlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "MobileTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MobileTargetList,
    :schema_type => XSD::QName.new(NsV201003, "MobileTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::MobileTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Money,
    :schema_type => XSD::QName.new(NsV201003, "Money"),
    :schema_basetype => XSD::QName.new(NsV201003, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NegativeAdGroupCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeAdGroupCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdGroupCriterion"),
    :schema_element => [
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["adGroupCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdGroupCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201003, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201003, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201003::BulkMutateJobService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["networkCoverageType", "AdwordsApi::V201003::BulkMutateJobService::NetworkCoverageType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkTargetList,
    :schema_type => XSD::QName.new(NsV201003, "NetworkTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::NetworkTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NullError,
    :schema_type => XSD::QName.new(NsV201003, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Operand,
    :schema_type => XSD::QName.new(NsV201003, "Operand"),
    :schema_element => [ :choice,
      ["adExtensionOverride", ["AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverride", XSD::QName.new(NsV201003, "AdExtensionOverride")]],
      ["adGroupAd", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupAd", XSD::QName.new(NsV201003, "AdGroupAd")]],
      ["adGroupCriterion", ["AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion", XSD::QName.new(NsV201003, "AdGroupCriterion")]],
      ["adGroup", ["AdwordsApi::V201003::BulkMutateJobService::AdGroup", XSD::QName.new(NsV201003, "AdGroup")]],
      ["ad", ["AdwordsApi::V201003::BulkMutateJobService::Ad", XSD::QName.new(NsV201003, "Ad")]],
      ["campaignCriterion", ["AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion", XSD::QName.new(NsV201003, "CampaignCriterion")]],
      ["campaign", ["AdwordsApi::V201003::BulkMutateJobService::Campaign", XSD::QName.new(NsV201003, "Campaign")]],
      ["job", ["AdwordsApi::V201003::BulkMutateJobService::Job", XSD::QName.new(NsV201003, "Job")]],
      ["media", ["AdwordsApi::V201003::BulkMutateJobService::Media", XSD::QName.new(NsV201003, "Media")]],
      ["targetList", ["AdwordsApi::V201003::BulkMutateJobService::TargetList", XSD::QName.new(NsV201003, "TargetList")]],
      ["target", ["AdwordsApi::V201003::BulkMutateJobService::Target", XSD::QName.new(NsV201003, "Target")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationStream,
    :schema_type => XSD::QName.new(NsV201003, "OperationStream"),
    :schema_element => [
      ["scopingEntityId", "AdwordsApi::V201003::BulkMutateJobService::EntityId", [0, 1]],
      ["operations", "AdwordsApi::V201003::BulkMutateJobService::Operation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationStreamResult,
    :schema_type => XSD::QName.new(NsV201003, "OperationStreamResult"),
    :schema_element => [
      ["operationResults", "AdwordsApi::V201003::BulkMutateJobService::OperationResult[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperatorError,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OverrideInfo,
    :schema_type => XSD::QName.new(NsV201003, "OverrideInfo"),
    :schema_element => [ :choice,
      ["locationOverrideInfo", ["AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfo", XSD::QName.new(NsV201003, "LocationOverrideInfo")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PagingError,
    :schema_type => XSD::QName.new(NsV201003, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Placement,
    :schema_type => XSD::QName.new(NsV201003, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformTarget,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "Target"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["platformType", "AdwordsApi::V201003::BulkMutateJobService::PlatformType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformTargetList,
    :schema_type => XSD::QName.new(NsV201003, "PlatformTargetList"),
    :schema_basetype => XSD::QName.new(NsV201003, "TargetList"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["targetList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "TargetList.Type")], [0, 1]],
      ["targets", "AdwordsApi::V201003::BulkMutateJobService::PlatformTarget[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationError,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["key", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey", [0, 1]],
      ["externalPolicyName", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyUrl", "SOAP::SOAPString", [0, 1]],
      ["externalPolicyDescription", "SOAP::SOAPString", [0, 1]],
      ["isExemptable", "SOAP::SOAPBoolean", [0, 1]],
      ["violatingParts", "AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Part"),
    :schema_element => [
      ["index", "SOAP::SOAPInt", [0, 1]],
      ["length", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationKey"),
    :schema_element => [
      ["policyName", "SOAP::SOAPString", [0, 1]],
      ["violatingText", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolygonTarget,
    :schema_type => XSD::QName.new(NsV201003, "PolygonTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["vertices", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreferenceAdGroupCriterionBids"),
    :schema_element => [
      ["proxyMaxCpc", "AdwordsApi::V201003::BulkMutateJobService::Bid", [0, 1]],
      ["preferredPosition", "SOAP::SOAPInt", [0, 1]],
      ["bottomPosition", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProvinceTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProvinceTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["provinceCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProximityTarget,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget"),
    :schema_basetype => XSD::QName.new(NsV201003, "GeoTarget"),
    :schema_element => [
      ["target_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Target.Type")], [0, 1]],
      ["excluded", "SOAP::SOAPBoolean", [0, 1]],
      ["geoPoint", "AdwordsApi::V201003::BulkMutateJobService::GeoPoint", [0, 1]],
      ["radiusDistanceUnits", "AdwordsApi::V201003::BulkMutateJobService::ProximityTargetDistanceUnits", [0, 1]],
      ["radiusInUnits", "SOAP::SOAPDouble", [0, 1]],
      ["address", "AdwordsApi::V201003::BulkMutateJobService::Address", [0, 1]],
      ["allowServiceOfAddress", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QualityInfo,
    :schema_type => XSD::QName.new(NsV201003, "QualityInfo"),
    :schema_element => [
      ["isKeywordAdRelevanceAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageQualityAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["isLandingPageLatencyAcceptable", "SOAP::SOAPBoolean", [0, 1]],
      ["qualityScore", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaError,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201003, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RegionCodeError,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RejectedError,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequestError,
    :schema_type => XSD::QName.new(NsV201003, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequiredError,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReturnValueResult,
    :schema_type => XSD::QName.new(NsV201003, "ReturnValueResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]],
      ["returnValue", "AdwordsApi::V201003::BulkMutateJobService::Operand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Sitelink,
    :schema_type => XSD::QName.new(NsV201003, "Sitelink"),
    :schema_element => [
      ["displayText", "SOAP::SOAPString", [0, 1]],
      ["destinationUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SitelinksExtension,
    :schema_type => XSD::QName.new(NsV201003, "SitelinksExtension"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdExtension"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adExtension_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdExtension.Type")], [0, 1]],
      ["sitelinks", "AdwordsApi::V201003::BulkMutateJobService::Sitelink[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201003, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Stats,
    :schema_type => XSD::QName.new(NsV201003, "Stats"),
    :schema_element => [
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["network", "AdwordsApi::V201003::BulkMutateJobService::StatsNetwork", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averagePosition", "SOAP::SOAPDouble", [0, 1]],
      ["averageCpc", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["averageCpm", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["ctr", "SOAP::SOAPDouble", [0, 1]],
      ["conversions", "SOAP::SOAPLong", [0, 1]],
      ["conversionRate", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversion", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["conversionsManyPerClick", "SOAP::SOAPLong", [0, 1]],
      ["conversionRateManyPerClick", "SOAP::SOAPDouble", [0, 1]],
      ["costPerConversionManyPerClick", "AdwordsApi::V201003::BulkMutateJobService::Money", [0, 1]],
      ["stats_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Stats.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsQueryError,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StringLengthError,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TargetError,
    :schema_type => XSD::QName.new(NsV201003, "TargetError"),
    :schema_basetype => XSD::QName.new(NsV201003, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TempAdUnionId,
    :schema_type => XSD::QName.new(NsV201003, "TempAdUnionId"),
    :schema_basetype => XSD::QName.new(NsV201003, "AdUnionId"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "AdUnionId.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateAd,
    :schema_type => XSD::QName.new(NsV201003, "TemplateAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["templateId", "SOAP::SOAPLong", [0, 1]],
      ["adUnionId", "AdwordsApi::V201003::BulkMutateJobService::AdUnionId", [0, 1]],
      ["templateElements", "AdwordsApi::V201003::BulkMutateJobService::TemplateElement[]", [0, nil]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["duration", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElement,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElement"),
    :schema_element => [
      ["uniqueName", "SOAP::SOAPString", [0, 1]],
      ["fields", "AdwordsApi::V201003::BulkMutateJobService::TemplateElementField[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElementField,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V201003::BulkMutateJobService::TemplateElementFieldType", [0, 1]],
      ["fieldText", "SOAP::SOAPString", [0, 1]],
      ["fieldMedia", "AdwordsApi::V201003::BulkMutateJobService::Media", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TextAd,
    :schema_type => XSD::QName.new(NsV201003, "TextAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "Ad"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["headline", "SOAP::SOAPString", [0, 1]],
      ["description1", "SOAP::SOAPString", [0, 1]],
      ["description2", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ThirdPartyRedirectAd,
    :schema_type => XSD::QName.new(NsV201003, "ThirdPartyRedirectAd"),
    :schema_basetype => XSD::QName.new(NsV201003, "RichMediaAd"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]],
      ["displayUrl", "SOAP::SOAPString", [0, 1]],
      ["approvalStatus", "AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus", [0, 1]],
      ["disapprovalReasons", "SOAP::SOAPString[]", [0, nil]],
      ["trademarkDisapproved", "SOAP::SOAPBoolean", [0, 1]],
      ["ad_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Ad.Type")], [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Dimensions", [0, 1]],
      ["snippet", "SOAP::SOAPString", [0, 1]],
      ["impressionBeaconUrl", "SOAP::SOAPString", [0, 1]],
      ["certifiedVendorFormatId", "SOAP::SOAPLong", [0, 1]],
      ["isCookieTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isUserInterestTargeted", "SOAP::SOAPBoolean", [0, 1]],
      ["isTagged", "SOAP::SOAPBoolean", [0, 1]],
      ["videoTypes", "AdwordsApi::V201003::BulkMutateJobService::VideoType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::UnprocessedResult,
    :schema_type => XSD::QName.new(NsV201003, "UnprocessedResult"),
    :schema_basetype => XSD::QName.new(NsV201003, "OperationResult"),
    :schema_element => [
      ["operationResult_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "OperationResult.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Vertical,
    :schema_type => XSD::QName.new(NsV201003, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201003, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Video,
    :schema_type => XSD::QName.new(NsV201003, "Video"),
    :schema_basetype => XSD::QName.new(NsV201003, "Media"),
    :schema_element => [
      ["mediaId", "SOAP::SOAPLong", [0, 1]],
      ["mediaTypeDb", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaType", [0, 1]],
      ["referenceId", "SOAP::SOAPLong", [0, 1]],
      ["dimensions", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry[]", [0, nil]],
      ["urls", "AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry[]", [0, nil]],
      ["mimeType", "AdwordsApi::V201003::BulkMutateJobService::MediaMimeType", [0, 1]],
      ["sourceUrl", "SOAP::SOAPString", [0, 1]],
      ["mediaSubType", "AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["fileSize", "SOAP::SOAPLong", [0, 1]],
      ["extendedCapabilities", "AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry[]", [0, nil]],
      ["creationTime", "SOAP::SOAPString", [0, 1]],
      ["media_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "Media.Type")], [0, 1]],
      ["durationMillis", "SOAP::SOAPLong", [0, 1]],
      ["streamingUrl", "SOAP::SOAPString", [0, 1]],
      ["readyToPlayOnTheWeb", "SOAP::SOAPBoolean", [0, 1]],
      ["industryStandardCommercialIdentifier", "SOAP::SOAPString", [0, 1]],
      ["advertisingId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "Ad.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride.ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdExtensionOverride.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroup.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAd.Status")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupAdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AdGroupServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AdServingOptimizationStatus,
    :schema_type => XSD::QName.new(NsV201003, "AdServingOptimizationStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AgeTargetAge,
    :schema_type => XSD::QName.new(NsV201003, "AgeTarget.Age")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApprovalStatus,
    :schema_type => XSD::QName.new(NsV201003, "ApprovalStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::AutoKeywordMatchingStatus,
    :schema_type => XSD::QName.new(NsV201003, "AutoKeywordMatchingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus,
    :schema_type => XSD::QName.new(NsV201003, "BasicJobStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BidSource,
    :schema_type => XSD::QName.new(NsV201003, "BidSource")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BiddingTransitionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetDeliveryMethod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetDeliveryMethod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetPeriod,
    :schema_type => XSD::QName.new(NsV201003, "Budget.BudgetPeriod")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BudgetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "BulkMutateJobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201003, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "CampaignError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::CampaignStatus,
    :schema_type => XSD::QName.new(NsV201003, "CampaignStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201003, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode,
    :schema_type => XSD::QName.new(NsV201003, "ConversionDeduplicationMode")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType,
    :schema_type => XSD::QName.new(NsV201003, "ConversionOptimizerBidType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DateErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DateError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DayOfWeek,
    :schema_type => XSD::QName.new(NsV201003, "DayOfWeek")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DeprecatedAdType,
    :schema_type => XSD::QName.new(NsV201003, "DeprecatedAd.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityIdType,
    :schema_type => XSD::QName.new(NsV201003, "EntityId.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201003, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GenderTargetGender,
    :schema_type => XSD::QName.new(NsV201003, "GenderTarget.Gender")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::IdErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "IdError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ImageError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::JobErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "JobError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201003, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Level,
    :schema_type => XSD::QName.new(NsV201003, "Level")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LoasAuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "LoasAuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationExtensionSource,
    :schema_type => XSD::QName.new(NsV201003, "LocationExtension.Source")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfoRadiusUnits,
    :schema_type => XSD::QName.new(NsV201003, "LocationOverrideInfo.RadiusUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType,
    :schema_type => XSD::QName.new(NsV201003, "MarkupLanguageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityState,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityState")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaExtendedCapabilityType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaSubType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMediaType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MediaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaMimeType,
    :schema_type => XSD::QName.new(NsV201003, "Media.MimeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaSize,
    :schema_type => XSD::QName.new(NsV201003, "Media.Size")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "MediaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour,
    :schema_type => XSD::QName.new(NsV201003, "MinuteOfHour")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NetworkCoverageType,
    :schema_type => XSD::QName.new(NsV201003, "NetworkCoverageType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201003, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Operator,
    :schema_type => XSD::QName.new(NsV201003, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PlatformType,
    :schema_type => XSD::QName.new(NsV201003, "PlatformType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "PolicyViolationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PositionPreference,
    :schema_type => XSD::QName.new(NsV201003, "PositionPreference")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::PricingModel,
    :schema_type => XSD::QName.new(NsV201003, "PricingModel")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ProximityTargetDistanceUnits,
    :schema_type => XSD::QName.new(NsV201003, "ProximityTarget.DistanceUnits")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::QuotaExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "QuotaExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RegionCodeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RejectedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "ServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsNetwork,
    :schema_type => XSD::QName.new(NsV201003, "Stats.Network")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StatsQueryError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "StringLengthError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SystemServingStatus,
    :schema_type => XSD::QName.new(NsV201003, "SystemServingStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason,
    :schema_type => XSD::QName.new(NsV201003, "TargetError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TemplateElementFieldType,
    :schema_type => XSD::QName.new(NsV201003, "TemplateElementField.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::TimeUnit,
    :schema_type => XSD::QName.new(NsV201003, "TimeUnit")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::UserStatus,
    :schema_type => XSD::QName.new(NsV201003, "UserStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::VideoType,
    :schema_type => XSD::QName.new(NsV201003, "VideoType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Get,
    :schema_name => XSD::QName.new(NsV201003, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::GetResponse,
    :schema_name => XSD::QName.new(NsV201003, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::ApiException,
    :schema_name => XSD::QName.new(NsV201003, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201003, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201003::BulkMutateJobService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::Mutate,
    :schema_name => XSD::QName.new(NsV201003, "mutate"),
    :schema_element => [
      ["operation", "AdwordsApi::V201003::BulkMutateJobService::JobOperation", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201003, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapHeader,
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
    :class => AdwordsApi::V201003::BulkMutateJobService::SoapResponseHeader,
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
