require 'adwords_api/v201008/CampaignCriterionService'
require 'soap/mapping'

module AdwordsApi; module V201008; module CampaignCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201008::CampaignCriterionService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::CampaignCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::CampaignCriterionService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::CampaignCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::CampaignCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionPage,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionSelector,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionIdFilter[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::CampaignCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionIdFilter,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionIdFilter"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201008::CampaignCriterionService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201008, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201008::CampaignCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201008, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201008, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201008, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201008, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201008, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201008::CampaignCriterionService::CriterionUserListMembershipStatus", [0, 1]],
      ["userListSize", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201008, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::CampaignCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201008, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201008, "Product"),
    :schema_basetype => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201008::CampaignCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201008, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201008::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::CampaignCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionPage,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionSelector,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionSelector"),
    :schema_element => [
      ["idFilters", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionIdFilter[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::CampaignCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201008, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201008, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201008, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201008, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::CampaignCriterionService::CampaignCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201008::CampaignCriterionService::SoapResponseHeader,
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
