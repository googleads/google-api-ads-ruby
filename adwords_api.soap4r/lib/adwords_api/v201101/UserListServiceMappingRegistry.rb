require 'adwords_api/v201101/UserListService'
require 'soap/mapping'

module AdwordsApi; module V201101; module UserListService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201101 = "https://adwords.google.com/api/adwords/cm/v201101"

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::UserListService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ExternalRemarketingUserList,
    :schema_type => XSD::QName.new(NsV201101, "ExternalRemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListConversionType,
    :schema_type => XSD::QName.new(NsV201101, "UserListConversionType"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["category", "AdwordsApi::V201101::UserListService::UserListConversionTypeCategory", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::DistinctErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::LogicalUserList,
    :schema_type => XSD::QName.new(NsV201101, "LogicalUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]],
      ["rules", "AdwordsApi::V201101::UserListService::UserListLogicalRule[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::LogicalUserListOperand,
    :schema_type => XSD::QName.new(NsV201101, "LogicalUserListOperand"),
    :schema_element => [ :choice,
      ["userInterest", ["AdwordsApi::V201101::UserListService::UserInterest", XSD::QName.new(NsV201101, "UserInterest")]],
      ["userList", ["AdwordsApi::V201101::UserListService::UserList", XSD::QName.new(NsV201101, "UserList")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::UserListService::SortOrder", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::UserListService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RemarketingUserList,
    :schema_type => XSD::QName.new(NsV201101, "RemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]],
      ["conversionTypes", "AdwordsApi::V201101::UserListService::UserListConversionType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RequestErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::UserListService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::UserListService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::UserListService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::UserListService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::SelectorErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201101::UserListService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserInterest,
    :schema_type => XSD::QName.new(NsV201101, "UserInterest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserList,
    :schema_type => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListError,
    :schema_type => XSD::QName.new(NsV201101, "UserListError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::UserListErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListLogicalRule,
    :schema_type => XSD::QName.new(NsV201101, "UserListLogicalRule"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::UserListService::UserListLogicalRuleOperator", [0, 1]],
      ["ruleOperands", "AdwordsApi::V201101::UserListService::LogicalUserListOperand[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListOperation,
    :schema_type => XSD::QName.new(NsV201101, "UserListOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::UserListService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::UserListService::UserList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListPage,
    :schema_type => XSD::QName.new(NsV201101, "UserListPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::UserListService::UserList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "UserListReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::UserListService::UserList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AccessReason,
    :schema_type => XSD::QName.new(NsV201101, "AccessReason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AccountUserListStatus,
    :schema_type => XSD::QName.new(NsV201101, "AccountUserListStatus")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListConversionTypeCategory,
    :schema_type => XSD::QName.new(NsV201101, "UserListConversionType.Category")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeRange,
    :schema_type => XSD::QName.new(NsV201101, "SizeRange")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListType,
    :schema_type => XSD::QName.new(NsV201101, "UserList.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "UserListError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListLogicalRuleOperator,
    :schema_type => XSD::QName.new(NsV201101, "UserListLogicalRule.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "UserListMembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ApiException,
    :schema_type => XSD::QName.new(NsV201101, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::UserListService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201101, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ExternalRemarketingUserList,
    :schema_type => XSD::QName.new(NsV201101, "ExternalRemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ClientTermsError,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::ClientTermsErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListConversionType,
    :schema_type => XSD::QName.new(NsV201101, "UserListConversionType"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["category", "AdwordsApi::V201101::UserListService::UserListConversionTypeCategory", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DateRange,
    :schema_type => XSD::QName.new(NsV201101, "DateRange"),
    :schema_element => [
      ["min", "SOAP::SOAPString", [0, 1]],
      ["max", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DistinctError,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::DistinctErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::LogicalUserList,
    :schema_type => XSD::QName.new(NsV201101, "LogicalUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]],
      ["rules", "AdwordsApi::V201101::UserListService::UserListLogicalRule[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::LogicalUserListOperand,
    :schema_type => XSD::QName.new(NsV201101, "LogicalUserListOperand"),
    :schema_element => [ :choice,
      ["userInterest", ["AdwordsApi::V201101::UserListService::UserInterest", XSD::QName.new(NsV201101, "UserInterest")]],
      ["userList", ["AdwordsApi::V201101::UserListService::UserList", XSD::QName.new(NsV201101, "UserList")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotWhitelistedError,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::NotWhitelistedErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OrderBy,
    :schema_type => XSD::QName.new(NsV201101, "OrderBy"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["sortOrder", "AdwordsApi::V201101::UserListService::SortOrder", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Paging,
    :schema_type => XSD::QName.new(NsV201101, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Predicate,
    :schema_type => XSD::QName.new(NsV201101, "Predicate"),
    :schema_element => [
      ["field", "SOAP::SOAPString", [0, 1]],
      ["operator", "AdwordsApi::V201101::UserListService::PredicateOperator", [0, 1]],
      ["values", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::QuotaCheckError,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::QuotaCheckErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201101, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RateExceededError,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RateExceededErrorReason", [0, 1]],
      ["rateName", "SOAP::SOAPString", [0, 1]],
      ["rateScope", "SOAP::SOAPString", [0, 1]],
      ["retryAfterSeconds", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RemarketingUserList,
    :schema_type => XSD::QName.new(NsV201101, "RemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]],
      ["conversionTypes", "AdwordsApi::V201101::UserListService::UserListConversionType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequestError,
    :schema_type => XSD::QName.new(NsV201101, "RequestError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RequestErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequiredError,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Selector,
    :schema_type => XSD::QName.new(NsV201101, "Selector"),
    :schema_element => [
      ["fields", "SOAP::SOAPString[]", [0, nil]],
      ["predicates", "AdwordsApi::V201101::UserListService::Predicate[]", [0, nil]],
      ["dateRange", "AdwordsApi::V201101::UserListService::DateRange", [0, 1]],
      ["ordering", "AdwordsApi::V201101::UserListService::OrderBy[]", [0, nil]],
      ["paging", "AdwordsApi::V201101::UserListService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SelectorError,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::SelectorErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeLimitError,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::SizeLimitErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201101::UserListService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201101, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserInterest,
    :schema_type => XSD::QName.new(NsV201101, "UserInterest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserList,
    :schema_type => XSD::QName.new(NsV201101, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201101::UserListService::UserListMembershipStatus", [0, 1]],
      ["accessReason", "AdwordsApi::V201101::UserListService::AccessReason", [0, 1]],
      ["accountUserListStatus", "AdwordsApi::V201101::UserListService::AccountUserListStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201101::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201101::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "UserList.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListError,
    :schema_type => XSD::QName.new(NsV201101, "UserListError"),
    :schema_basetype => XSD::QName.new(NsV201101, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201101::UserListService::UserListErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListLogicalRule,
    :schema_type => XSD::QName.new(NsV201101, "UserListLogicalRule"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::UserListService::UserListLogicalRuleOperator", [0, 1]],
      ["ruleOperands", "AdwordsApi::V201101::UserListService::LogicalUserListOperand[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListOperation,
    :schema_type => XSD::QName.new(NsV201101, "UserListOperation"),
    :schema_basetype => XSD::QName.new(NsV201101, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201101::UserListService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201101::UserListService::UserList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListPage,
    :schema_type => XSD::QName.new(NsV201101, "UserListPage"),
    :schema_basetype => XSD::QName.new(NsV201101, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201101::UserListService::UserList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListReturnValue,
    :schema_type => XSD::QName.new(NsV201101, "UserListReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201101, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201101::UserListService::UserList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AccessReason,
    :schema_type => XSD::QName.new(NsV201101, "AccessReason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AccountUserListStatus,
    :schema_type => XSD::QName.new(NsV201101, "AccountUserListStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ClientTermsErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ClientTermsError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListConversionTypeCategory,
    :schema_type => XSD::QName.new(NsV201101, "UserListConversionType.Category")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::DistinctErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "DistinctError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::NotWhitelistedErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "NotWhitelistedError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201101, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Operator,
    :schema_type => XSD::QName.new(NsV201101, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::PredicateOperator,
    :schema_type => XSD::QName.new(NsV201101, "Predicate.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::QuotaCheckErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "QuotaCheckError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RateExceededErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RateExceededError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequestErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequestError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SelectorErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SelectorError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeLimitErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "SizeLimitError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SizeRange,
    :schema_type => XSD::QName.new(NsV201101, "SizeRange")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SortOrder,
    :schema_type => XSD::QName.new(NsV201101, "SortOrder")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListType,
    :schema_type => XSD::QName.new(NsV201101, "UserList.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListErrorReason,
    :schema_type => XSD::QName.new(NsV201101, "UserListError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListLogicalRuleOperator,
    :schema_type => XSD::QName.new(NsV201101, "UserListLogicalRule.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::UserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201101, "UserListMembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Get,
    :schema_name => XSD::QName.new(NsV201101, "get"),
    :schema_element => [
      ["serviceSelector", "AdwordsApi::V201101::UserListService::Selector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::GetResponse,
    :schema_name => XSD::QName.new(NsV201101, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::UserListService::UserListPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::ApiException,
    :schema_name => XSD::QName.new(NsV201101, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201101, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201101::UserListService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::Mutate,
    :schema_name => XSD::QName.new(NsV201101, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201101::UserListService::UserListOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201101, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201101::UserListService::UserListReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201101::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201101::UserListService::SoapResponseHeader,
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
