require 'adwords_api/v201101/CampaignCriterionService'
require 'soap/mapping'

module AdwordsApi; module V201101; module CampaignCriterionService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::CampaignCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionPage,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201101::CampaignCriterionService::ContentLabelType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::CriterionErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::CampaignCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::OperatorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::CampaignCriterionService::SortOrder", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201101, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::CampaignCriterionService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::CampaignCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::CampaignCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::CampaignCriterionService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::CampaignCriterionService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::CampaignCriterionService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::CampaignCriterionService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::SelectorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::CampaignCriterionService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabelType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PagingError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]],
      ["limitType", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionOperation,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::CampaignCriterionService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionPage,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterion[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ContentLabel,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabel"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["contentLabelType", "AdwordsApi::V201101::CampaignCriterionService::ContentLabelType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionError,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::CriterionErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceeded,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason", [0, 1]],
      ["enclosingId", "SOAP::SOAPString", [0, 1]],
      ["limit", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityNotFound,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::EntityNotFoundReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::CampaignCriterionService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NegativeCampaignCriterion,
    :schema_type => XSD::QName.new(NsV201101, "NegativeCampaignCriterion"),
    :schema_basetype => XSD::QName.new(NsV201101, "CampaignCriterion"),
    :schema_element => [
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["criterion", "AdwordsApi::V201101::CampaignCriterionService::Criterion", [0, 1]],
      ["campaignCriterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "CampaignCriterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationError,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperatorError,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::OperatorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::CampaignCriterionService::SortOrder", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PagingError,
    :schema_type => XSD::QName.new(NsV201101, "PagingError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::PagingErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::CampaignCriterionService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::CampaignCriterionService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::CampaignCriterionService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::CampaignCriterionService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::CampaignCriterionService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::CampaignCriterionService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::CampaignCriterionService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::SelectorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::CampaignCriterionService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::CampaignCriterionService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionLimitExceededCriteriaLimitType,
    :schema_type => XSD::QName.new(NsV201101, "CampaignCriterionLimitExceeded.CriteriaLimitType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ContentLabelType,
    :schema_type => XSD::QName.new(NsV201101, "ContentLabelType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "CriterionError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityCountLimitExceededReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityCountLimitExceeded.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::EntityNotFoundReason,
    :schema_type => XSD::QName.new(NsV201101, "EntityNotFound.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NewEntityCreationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NewEntityCreationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::OperatorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "OperatorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PagingErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "PagingError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["serviceSelector", "AdwordsApi::V201101::CampaignCriterionService::Selector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::CampaignCriterionService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::CampaignCriterionService::CampaignCriterionReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapHeader,
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
    :class => AdwordsApi::V201101::CampaignCriterionService::SoapResponseHeader,
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
