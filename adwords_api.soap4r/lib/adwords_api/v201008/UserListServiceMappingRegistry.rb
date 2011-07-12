require 'adwords_api/v201008/UserListService'
require 'soap/mapping'

module AdwordsApi; module V201008; module UserListService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV201008 = "https://adwords.google.com/api/adwords/cm/v201008"

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::UserListService::ApiError[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ExternalRemarketingUserList,
    :schema_type => XSD::QName.new(NsV201008, "ExternalRemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListConversionType,
    :schema_type => XSD::QName.new(NsV201008, "UserListConversionType"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["category", "AdwordsApi::V201008::UserListService::UserListConversionTypeCategory", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::DatabaseErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::InternalApiErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::LogicalUserList,
    :schema_type => XSD::QName.new(NsV201008, "LogicalUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]],
      ["rules", "AdwordsApi::V201008::UserListService::UserListLogicalRule[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::LogicalUserListOperand,
    :schema_type => XSD::QName.new(NsV201008, "LogicalUserListOperand"),
    :schema_element => [ :choice,
      ["userInterest", ["AdwordsApi::V201008::UserListService::UserInterest", XSD::QName.new(NsV201008, "UserInterest")]],
      ["userList", ["AdwordsApi::V201008::UserListService::UserList", XSD::QName.new(NsV201008, "UserList")]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::RangeErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RemarketingUserList,
    :schema_type => XSD::QName.new(NsV201008, "RemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]],
      ["conversionTypes", "AdwordsApi::V201008::UserListService::UserListConversionType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::RequiredErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201008::UserListService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserInterest,
    :schema_type => XSD::QName.new(NsV201008, "UserInterest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserList,
    :schema_type => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListError,
    :schema_type => XSD::QName.new(NsV201008, "UserListError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::UserListErrorReason", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListLogicalRule,
    :schema_type => XSD::QName.new(NsV201008, "UserListLogicalRule"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::UserListService::UserListLogicalRuleOperator", [0, 1]],
      ["ruleOperands", "AdwordsApi::V201008::UserListService::LogicalUserListOperand[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListOperation,
    :schema_type => XSD::QName.new(NsV201008, "UserListOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::UserListService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::UserListService::UserList", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListPage,
    :schema_type => XSD::QName.new(NsV201008, "UserListPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::UserListService::UserList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "UserListReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::UserListService::UserList[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListSelector,
    :schema_type => XSD::QName.new(NsV201008, "UserListSelector"),
    :schema_element => [
      ["userListIds", "SOAP::SOAPLong[]", [0, nil]],
      ["userListTypes", "AdwordsApi::V201008::UserListService::UserListType[]", [0, nil]],
      ["userListStatuses", "AdwordsApi::V201008::UserListService::UserListMembershipStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::UserListService::Paging", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListConversionTypeCategory,
    :schema_type => XSD::QName.new(NsV201008, "UserListConversionType.Category")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::SizeRange,
    :schema_type => XSD::QName.new(NsV201008, "SizeRange")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListType,
    :schema_type => XSD::QName.new(NsV201008, "UserList.Type")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "UserListError.Reason")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListLogicalRuleOperator,
    :schema_type => XSD::QName.new(NsV201008, "UserListLogicalRule.Operator")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserListMembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ApiException,
    :schema_type => XSD::QName.new(NsV201008, "ApiException"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::UserListService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ApplicationException,
    :schema_type => XSD::QName.new(NsV201008, "ApplicationException"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthenticationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::AuthenticationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthorizationError,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::AuthorizationErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ExternalRemarketingUserList,
    :schema_type => XSD::QName.new(NsV201008, "ExternalRemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListConversionType,
    :schema_type => XSD::QName.new(NsV201008, "UserListConversionType"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["category", "AdwordsApi::V201008::UserListService::UserListConversionTypeCategory", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::DatabaseError,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::DatabaseErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::InternalApiError,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::InternalApiErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::LogicalUserList,
    :schema_type => XSD::QName.new(NsV201008, "LogicalUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]],
      ["rules", "AdwordsApi::V201008::UserListService::UserListLogicalRule[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::LogicalUserListOperand,
    :schema_type => XSD::QName.new(NsV201008, "LogicalUserListOperand"),
    :schema_element => [ :choice,
      ["userInterest", ["AdwordsApi::V201008::UserListService::UserInterest", XSD::QName.new(NsV201008, "UserInterest")]],
      ["userList", ["AdwordsApi::V201008::UserListService::UserList", XSD::QName.new(NsV201008, "UserList")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::NotEmptyError,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::NotEmptyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::OperationAccessDenied,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::OperationAccessDeniedReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Paging,
    :schema_type => XSD::QName.new(NsV201008, "Paging"),
    :schema_element => [
      ["startIndex", "SOAP::SOAPInt", [0, 1]],
      ["numberResults", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::C_RangeError,
    :schema_type => XSD::QName.new(NsV201008, "RangeError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::RangeErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ReadOnlyError,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::ReadOnlyErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RemarketingUserList,
    :schema_type => XSD::QName.new(NsV201008, "RemarketingUserList"),
    :schema_basetype => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]],
      ["conversionTypes", "AdwordsApi::V201008::UserListService::UserListConversionType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RequiredError,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::RequiredErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201008::UserListService::SoapResponseHeader,
    :schema_type => XSD::QName.new(NsV201008, "SoapResponseHeader"),
    :schema_element => [
      ["requestId", "SOAP::SOAPString", [0, 1]],
      ["operations", "SOAP::SOAPLong", [0, 1]],
      ["responseTime", "SOAP::SOAPLong", [0, 1]],
      ["units", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserInterest,
    :schema_type => XSD::QName.new(NsV201008, "UserInterest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserList,
    :schema_type => XSD::QName.new(NsV201008, "UserList"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["isReadOnly", "SOAP::SOAPBoolean", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["status", "AdwordsApi::V201008::UserListService::UserListMembershipStatus", [0, 1]],
      ["membershipLifeSpan", "SOAP::SOAPLong", [0, 1]],
      ["size", "SOAP::SOAPLong", [0, 1]],
      ["sizeRange", "AdwordsApi::V201008::UserListService::SizeRange", [0, 1]],
      ["type", "AdwordsApi::V201008::UserListService::UserListType", [0, 1]],
      ["userList_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "UserList.Type")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListError,
    :schema_type => XSD::QName.new(NsV201008, "UserListError"),
    :schema_basetype => XSD::QName.new(NsV201008, "ApiError"),
    :schema_element => [
      ["fieldPath", "SOAP::SOAPString", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]],
      ["errorString", "SOAP::SOAPString", [0, 1]],
      ["apiError_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApiError.Type")], [0, 1]],
      ["reason", "AdwordsApi::V201008::UserListService::UserListErrorReason", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListLogicalRule,
    :schema_type => XSD::QName.new(NsV201008, "UserListLogicalRule"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::UserListService::UserListLogicalRuleOperator", [0, 1]],
      ["ruleOperands", "AdwordsApi::V201008::UserListService::LogicalUserListOperand[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListOperation,
    :schema_type => XSD::QName.new(NsV201008, "UserListOperation"),
    :schema_basetype => XSD::QName.new(NsV201008, "Operation"),
    :schema_element => [
      ["operator", "AdwordsApi::V201008::UserListService::Operator", [0, 1]],
      ["operation_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Operation.Type")], [0, 1]],
      ["operand", "AdwordsApi::V201008::UserListService::UserList", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListPage,
    :schema_type => XSD::QName.new(NsV201008, "UserListPage"),
    :schema_basetype => XSD::QName.new(NsV201008, "Page"),
    :schema_element => [
      ["totalNumEntries", "SOAP::SOAPInt", [0, 1]],
      ["page_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "Page.Type")], [0, 1]],
      ["entries", "AdwordsApi::V201008::UserListService::UserList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListReturnValue,
    :schema_type => XSD::QName.new(NsV201008, "UserListReturnValue"),
    :schema_basetype => XSD::QName.new(NsV201008, "ListReturnValue"),
    :schema_element => [
      ["listReturnValue_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ListReturnValue.Type")], [0, 1]],
      ["value", "AdwordsApi::V201008::UserListService::UserList[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListSelector,
    :schema_type => XSD::QName.new(NsV201008, "UserListSelector"),
    :schema_element => [
      ["userListIds", "SOAP::SOAPLong[]", [0, nil]],
      ["userListTypes", "AdwordsApi::V201008::UserListService::UserListType[]", [0, nil]],
      ["userListStatuses", "AdwordsApi::V201008::UserListService::UserListMembershipStatus[]", [0, nil]],
      ["paging", "AdwordsApi::V201008::UserListService::Paging", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthenticationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthenticationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::AuthorizationErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "AuthorizationError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListConversionTypeCategory,
    :schema_type => XSD::QName.new(NsV201008, "UserListConversionType.Category")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::DatabaseErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "DatabaseError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::InternalApiErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "InternalApiError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::NotEmptyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "NotEmptyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::OperationAccessDeniedReason,
    :schema_type => XSD::QName.new(NsV201008, "OperationAccessDenied.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Operator,
    :schema_type => XSD::QName.new(NsV201008, "Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RangeErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RangeError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ReadOnlyErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "ReadOnlyError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::RequiredErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "RequiredError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::SizeRange,
    :schema_type => XSD::QName.new(NsV201008, "SizeRange")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListType,
    :schema_type => XSD::QName.new(NsV201008, "UserList.Type")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListErrorReason,
    :schema_type => XSD::QName.new(NsV201008, "UserListError.Reason")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListLogicalRuleOperator,
    :schema_type => XSD::QName.new(NsV201008, "UserListLogicalRule.Operator")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::UserListMembershipStatus,
    :schema_type => XSD::QName.new(NsV201008, "UserListMembershipStatus")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Get,
    :schema_name => XSD::QName.new(NsV201008, "get"),
    :schema_element => [
      ["selector", "AdwordsApi::V201008::UserListService::UserListSelector", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::GetResponse,
    :schema_name => XSD::QName.new(NsV201008, "getResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::UserListService::UserListPage", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::ApiException,
    :schema_name => XSD::QName.new(NsV201008, "ApiExceptionFault"),
    :schema_element => [
      ["message", "SOAP::SOAPString", [0, 1]],
      ["applicationException_Type", ["SOAP::SOAPString", XSD::QName.new(NsV201008, "ApplicationException.Type")], [0, 1]],
      ["errors", "AdwordsApi::V201008::UserListService::ApiError[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::Mutate,
    :schema_name => XSD::QName.new(NsV201008, "mutate"),
    :schema_element => [
      ["operations", "AdwordsApi::V201008::UserListService::UserListOperation[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::MutateResponse,
    :schema_name => XSD::QName.new(NsV201008, "mutateResponse"),
    :schema_element => [
      ["rval", "AdwordsApi::V201008::UserListService::UserListReturnValue", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V201008::UserListService::SoapHeader,
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
    :class => AdwordsApi::V201008::UserListService::SoapResponseHeader,
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
