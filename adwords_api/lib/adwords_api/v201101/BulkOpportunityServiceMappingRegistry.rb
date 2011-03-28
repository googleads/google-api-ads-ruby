require 'adwords_api/v201101/BulkOpportunityService'
require 'soap/mapping'

module AdwordsApi; module V201101; module BulkOpportunityService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"
  NsV201101_0 = "https://adwords.google.com/api/adwords/o/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["type", "AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscapeType", [0, 1]],
      ["landscapeCurrent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkOpportunityService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint,
    :schema_type => XSD::QName.new(NsV201101, "BidLandscape.LandscapePoint"),
    :schema_element => [
      ["bid", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["marginalCpc", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "CriterionBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::BulkOpportunityService::KeywordMatchType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::NullErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::BulkOpportunityService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkOpportunityService::ProductConditionOperand", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapHeader,
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
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::BulkOpportunityService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201101::BulkOpportunityService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::AdFormatSpec[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BidLandscapeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BidLandscapeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::BidLandscape", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityPage,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201101::BulkOpportunityService::Opportunity[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunitySelector,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunitySelector"),
    :schema_element => [
      ["ideaTypes", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType[]", [0, nil]],
      ["requestedAttributeTypes", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::BulkOpportunityService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceError,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "CriterionAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Criterion", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::IdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfo", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Keyword", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::C_Range", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Opportunity,
    :schema_type => XSD::QName.new(NsV201101_0, "Opportunity"),
    :schema_element => [
      ["opportunityIdeas", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdea[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityAttribute_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityAttribute_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType", [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Attribute", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityError,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::OpportunityErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdea,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttribute_AttributeMapEntry[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Placement", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::C_Range,
    :schema_type => XSD::QName.new(NsV201101_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201101::BulkOpportunityService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201101::BulkOpportunityService::ComparableValue", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptor", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscapeType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityServiceError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityAttributeType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdFormat")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["type", "AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscapeType", [0, 1]],
      ["landscapeCurrent", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkOpportunityService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint,
    :schema_type => XSD::QName.new(NsV201101, "BidLandscape.LandscapePoint"),
    :schema_element => [
      ["bid", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["clicks", "SOAP::SOAPLong", [0, 1]],
      ["cost", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["marginalCpc", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]],
      ["impressions", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Criterion,
    :schema_type => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionBidLandscape,
    :schema_type => XSD::QName.new(NsV201101, "CriterionBidLandscape"),
    :schema_basetype => XSD::QName.new(NsV201101, "BidLandscape"),
    :schema_element => [
      ["dataEntry_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "DataEntry.Type")], [0, 1]],
      ["campaignId", "SOAP::SOAPLong", [0, 1]],
      ["adGroupId", "SOAP::SOAPLong", [0, 1]],
      ["startDate", "SOAP::SOAPString", [0, 1]],
      ["endDate", "SOAP::SOAPString", [0, 1]],
      ["landscapePoints", "AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint[]", [0, nil]],
      ["criterionId", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DoubleValue,
    :schema_type => XSD::QName.new(NsV201101, "DoubleValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Keyword,
    :schema_type => XSD::QName.new(NsV201101, "Keyword"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["matchType", "AdwordsApi::V201101::BulkOpportunityService::KeywordMatchType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongValue,
    :schema_type => XSD::QName.new(NsV201101, "LongValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "NumberValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["number", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Money,
    :schema_type => XSD::QName.new(NsV201101, "Money"),
    :schema_basetype => XSD::QName.new(NsV201101, "ComparableValue"),
    :schema_element => [
      ["comparableValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ComparableValue.Type")], [0, 1]],
      ["microAmount", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NullError,
    :schema_type => XSD::QName.new(NsV201101, "NullError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::NullErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Placement,
    :schema_type => XSD::QName.new(NsV201101, "Placement"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Product,
    :schema_type => XSD::QName.new(NsV201101, "Product"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["conditions", "AdwordsApi::V201101::BulkOpportunityService::ProductCondition[]", [0, nil]],
      ["text", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ProductCondition,
    :schema_type => XSD::QName.new(NsV201101, "ProductCondition"),
    :schema_element => [
      ["argument", "SOAP::SOAPString", [0, 1]],
      ["operand", "AdwordsApi::V201101::BulkOpportunityService::ProductConditionOperand", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ProductConditionOperand,
    :schema_type => XSD::QName.new(NsV201101, "ProductConditionOperand"),
    :schema_element => [
      ["operand", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapHeader,
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
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserInterest,
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
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserList,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["userListId", "SOAP::SOAPLong", [0, 1]],
      ["userListName", "SOAP::SOAPString", [0, 1]],
      ["userListMembershipStatus", "AdwordsApi::V201101::BulkOpportunityService::CriterionUserListMembershipStatus", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Vertical,
    :schema_type => XSD::QName.new(NsV201101, "Vertical"),
    :schema_basetype => XSD::QName.new(NsV201101, "Criterion"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["criterion_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Criterion.Type")], [0, 1]],
      ["path", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdFormatSpec,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpec"),
    :schema_element => [
      ["format", "AdwordsApi::V201101::BulkOpportunityService::SiteConstantsAdFormat", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdFormatSpecListAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "AdFormatSpecListAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::AdFormatSpec[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BidLandscapeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BidLandscapeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::BidLandscape", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BooleanAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "BooleanAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPBoolean", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityPage,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityPage"),
    :schema_element => [
      ["entries", "AdwordsApi::V201101::BulkOpportunityService::Opportunity[]", [0, nil]],
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunitySelector,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunitySelector"),
    :schema_element => [
      ["ideaTypes", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType[]", [0, nil]],
      ["requestedAttributeTypes", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::BulkOpportunityService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceError,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityServiceError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "CriterionAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Criterion", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DoubleAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "DoubleAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::IdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfo,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfo"),
    :schema_element => [
      ["maxAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["minAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["medianAdDuration", "SOAP::SOAPInt", [0, 1]],
      ["preRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["midRollPercent", "SOAP::SOAPDouble", [0, 1]],
      ["postRollPercent", "SOAP::SOAPDouble", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfoAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "InStreamAdInfoAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfo", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IntegerAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IntegerSetAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "IntegerSetAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::KeywordAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "KeywordAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Keyword", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::LongRangeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "LongRangeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::C_Range", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MoneyAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MoneyAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Money", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolume,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolume"),
    :schema_element => [
      ["year", "SOAP::SOAPInt", [0, 1]],
      ["month", "SOAP::SOAPInt", [0, 1]],
      ["count", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolumeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "MonthlySearchVolumeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolume[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Opportunity,
    :schema_type => XSD::QName.new(NsV201101_0, "Opportunity"),
    :schema_element => [
      ["opportunityIdeas", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdea[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityAttribute_AttributeMapEntry,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityAttribute_AttributeMapEntry"),
    :schema_element => [
      ["key", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType", [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Attribute", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityError,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "fieldPath")], [0, 1]],
      ["trigger", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "trigger")], [0, 1]],
      ["errorString", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "errorString")], [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::BulkOpportunityService::OpportunityErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdea,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdea"),
    :schema_element => [
      ["data", "AdwordsApi::V201101::BulkOpportunityService::OpportunityAttribute_AttributeMapEntry[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::PlacementAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::Placement", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::PlacementTypeAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "PlacementTypeAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::SiteConstantsPlacementType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::C_Range,
    :schema_type => XSD::QName.new(NsV201101_0, "Range"),
    :schema_element => [
      ["min", "AdwordsApi::V201101::BulkOpportunityService::ComparableValue", [0, 1]],
      ["max", "AdwordsApi::V201101::BulkOpportunityService::ComparableValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::StringAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "StringAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptor,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptor"),
    :schema_element => [
      ["url", "SOAP::SOAPString", [0, 1]],
      ["title", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptorAttribute,
    :schema_type => XSD::QName.new(NsV201101_0, "WebpageDescriptorAttribute"),
    :schema_basetype => XSD::QName.new(NsV201101_0, "Attribute"),
    :schema_element => [
      ["attribute_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101_0, "Attribute.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptor", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscapeType,
    :schema_type => XSD::QName.new(NsV201101, "AdGroupBidLandscape.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::KeywordMatchType,
    :schema_type => XSD::QName.new(NsV201101, "KeywordMatchType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::NullErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NullError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::CriterionUserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "CriterionUserList.MembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "BulkOpportunityServiceError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::IdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "IdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityAttributeType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityErrorReason,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType,
    :schema_type => XSD::QName.new(NsV201101_0, "OpportunityIdeaType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SiteConstantsAdFormat,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.AdFormat")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SiteConstantsPlacementType,
    :schema_type => XSD::QName.new(NsV201101_0, "SiteConstants.PlacementType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::Get,
    :schema_name => XSD::QName.new(NsV201101_0, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201101::BulkOpportunityService::BulkOpportunitySelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101_0, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::ApiException,
    :schema_name => XSD::QName.new(NsV201101_0, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::BulkOpportunityService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapHeader,
    :schema_name => XSD::QName.new(NsV201101_0, "RequestHeader"),
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
    :class => AdwordsApi::V201101::BulkOpportunityService::SoapResponseHeader,
    :schema_name => XSD::QName.new(NsV201101_0, "ResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )
end

end; end; end
