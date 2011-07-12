require 'xsd/qname'

module AdwordsApi; module V201008; module UserListService


# ApiError
# abstract
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
class ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
  end
end

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::AuthenticationErrorReason
class AuthenticationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# AuthorizationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::AuthorizationErrorReason
class AuthorizationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DatabaseError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::DatabaseErrorReason
class DatabaseError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# InternalApiError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::InternalApiErrorReason
class InternalApiError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NotEmptyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::NotEmptyErrorReason
class NotEmptyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# OperationAccessDenied
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::OperationAccessDeniedReason
class OperationAccessDenied < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RangeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::RangeErrorReason
class C_RangeError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ReadOnlyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::ReadOnlyErrorReason
class ReadOnlyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RequiredError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::RequiredErrorReason
class RequiredError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# UserListError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::UserListService::UserListErrorReason
class UserListError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ApplicationException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
class ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type

  def initialize(message = nil, applicationException_Type = nil)
    @message = message
    @applicationException_Type = applicationException_Type
  end
end

# ApiException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
# - errors - AdwordsApi::V201008::UserListService::ApiError
class ApiException < ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type
  attr_accessor :errors

  def initialize(message = nil, applicationException_Type = nil, errors = [])
    @message = message
    @applicationException_Type = applicationException_Type
    @errors = errors
  end
end

# UserListConversionType
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - category - AdwordsApi::V201008::UserListService::UserListConversionTypeCategory
class UserListConversionType
  attr_accessor :id
  attr_accessor :name
  attr_accessor :category

  def initialize(id = nil, name = nil, category = nil)
    @id = id
    @name = name
    @category = category
  end
end

# ListReturnValue
# abstract
# - listReturnValue_Type - SOAP::SOAPString
class ListReturnValue
  attr_accessor :listReturnValue_Type

  def initialize(listReturnValue_Type = nil)
    @listReturnValue_Type = listReturnValue_Type
  end
end

# UserListReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdwordsApi::V201008::UserListService::UserList
class UserListReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# LogicalUserListOperand
# - userInterest - AdwordsApi::V201008::UserListService::UserInterest
# - userList - AdwordsApi::V201008::UserListService::UserList
class LogicalUserListOperand
  attr_accessor :userInterest
  attr_accessor :userList

  def initialize(userInterest = nil, userList = nil)
    @userInterest = userInterest
    @userList = userList
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201008::UserListService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# UserListOperation
# - operator - AdwordsApi::V201008::UserListService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201008::UserListService::UserList
class UserListOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
  end
end

# Page
# abstract
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
class Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type

  def initialize(totalNumEntries = nil, page_Type = nil)
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
  end
end

# UserListPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdwordsApi::V201008::UserListService::UserList
class UserListPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# Paging
# - startIndex - SOAP::SOAPInt
# - numberResults - SOAP::SOAPInt
class Paging
  attr_accessor :startIndex
  attr_accessor :numberResults

  def initialize(startIndex = nil, numberResults = nil)
    @startIndex = startIndex
    @numberResults = numberResults
  end
end

# SoapHeader
# - authToken - SOAP::SOAPString
# - clientCustomerId - SOAP::SOAPString
# - clientEmail - SOAP::SOAPString
# - developerToken - SOAP::SOAPString
# - userAgent - SOAP::SOAPString
# - validateOnly - SOAP::SOAPBoolean
# - partialFailure - SOAP::SOAPBoolean
class SoapHeader
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail
  attr_accessor :developerToken
  attr_accessor :userAgent
  attr_accessor :validateOnly
  attr_accessor :partialFailure

  def initialize(authToken = nil, clientCustomerId = nil, clientEmail = nil, developerToken = nil, userAgent = nil, validateOnly = nil, partialFailure = nil)
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
    @developerToken = developerToken
    @userAgent = userAgent
    @validateOnly = validateOnly
    @partialFailure = partialFailure
  end
end

# SoapResponseHeader
# - requestId - SOAP::SOAPString
# - operations - SOAP::SOAPLong
# - responseTime - SOAP::SOAPLong
# - units - SOAP::SOAPLong
class SoapResponseHeader
  attr_accessor :requestId
  attr_accessor :operations
  attr_accessor :responseTime
  attr_accessor :units

  def initialize(requestId = nil, operations = nil, responseTime = nil, units = nil)
    @requestId = requestId
    @operations = operations
    @responseTime = responseTime
    @units = units
  end
end

# UserInterest
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - sizeRange - AdwordsApi::V201008::UserListService::SizeRange
class UserInterest
  attr_accessor :id
  attr_accessor :name
  attr_accessor :sizeRange

  def initialize(id = nil, name = nil, sizeRange = nil)
    @id = id
    @name = name
    @sizeRange = sizeRange
  end
end

# UserList
# - id - SOAP::SOAPLong
# - isReadOnly - SOAP::SOAPBoolean
# - name - SOAP::SOAPString
# - description - SOAP::SOAPString
# - status - AdwordsApi::V201008::UserListService::UserListMembershipStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201008::UserListService::SizeRange
# - type - AdwordsApi::V201008::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
class UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil)
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @membershipLifeSpan = membershipLifeSpan
    @size = size
    @sizeRange = sizeRange
    @type = type
    @userList_Type = userList_Type
  end
end

# ExternalRemarketingUserList
# - id - SOAP::SOAPLong
# - isReadOnly - SOAP::SOAPBoolean
# - name - SOAP::SOAPString
# - description - SOAP::SOAPString
# - status - AdwordsApi::V201008::UserListService::UserListMembershipStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201008::UserListService::SizeRange
# - type - AdwordsApi::V201008::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
class ExternalRemarketingUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil)
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @membershipLifeSpan = membershipLifeSpan
    @size = size
    @sizeRange = sizeRange
    @type = type
    @userList_Type = userList_Type
  end
end

# LogicalUserList
# - id - SOAP::SOAPLong
# - isReadOnly - SOAP::SOAPBoolean
# - name - SOAP::SOAPString
# - description - SOAP::SOAPString
# - status - AdwordsApi::V201008::UserListService::UserListMembershipStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201008::UserListService::SizeRange
# - type - AdwordsApi::V201008::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
# - rules - AdwordsApi::V201008::UserListService::UserListLogicalRule
class LogicalUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type
  attr_accessor :rules

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil, rules = [])
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @membershipLifeSpan = membershipLifeSpan
    @size = size
    @sizeRange = sizeRange
    @type = type
    @userList_Type = userList_Type
    @rules = rules
  end
end

# RemarketingUserList
# - id - SOAP::SOAPLong
# - isReadOnly - SOAP::SOAPBoolean
# - name - SOAP::SOAPString
# - description - SOAP::SOAPString
# - status - AdwordsApi::V201008::UserListService::UserListMembershipStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201008::UserListService::SizeRange
# - type - AdwordsApi::V201008::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
# - conversionTypes - AdwordsApi::V201008::UserListService::UserListConversionType
class RemarketingUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type
  attr_accessor :conversionTypes

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil, conversionTypes = [])
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @membershipLifeSpan = membershipLifeSpan
    @size = size
    @sizeRange = sizeRange
    @type = type
    @userList_Type = userList_Type
    @conversionTypes = conversionTypes
  end
end

# UserListLogicalRule
# - operator - AdwordsApi::V201008::UserListService::UserListLogicalRuleOperator
# - ruleOperands - AdwordsApi::V201008::UserListService::LogicalUserListOperand
class UserListLogicalRule
  attr_accessor :operator
  attr_accessor :ruleOperands

  def initialize(operator = nil, ruleOperands = [])
    @operator = operator
    @ruleOperands = ruleOperands
  end
end

# UserListSelector
# - userListIds - SOAP::SOAPLong
# - userListTypes - AdwordsApi::V201008::UserListService::UserListType
# - userListStatuses - AdwordsApi::V201008::UserListService::UserListMembershipStatus
# - paging - AdwordsApi::V201008::UserListService::Paging
class UserListSelector
  attr_accessor :userListIds
  attr_accessor :userListTypes
  attr_accessor :userListStatuses
  attr_accessor :paging

  def initialize(userListIds = [], userListTypes = [], userListStatuses = [], paging = nil)
    @userListIds = userListIds
    @userListTypes = userListTypes
    @userListStatuses = userListStatuses
    @paging = paging
  end
end

# AuthenticationError.Reason
class AuthenticationErrorReason < ::String
  AUTHENTICATION_FAILED = AuthenticationErrorReason.new("AUTHENTICATION_FAILED")
  CLIENT_CUSTOMER_ID_INVALID = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_INVALID")
  CLIENT_CUSTOMER_ID_IS_REQUIRED = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_IS_REQUIRED")
  CLIENT_EMAIL_FAILED_TO_AUTHENTICATE = AuthenticationErrorReason.new("CLIENT_EMAIL_FAILED_TO_AUTHENTICATE")
  CLIENT_EMAIL_INVALID = AuthenticationErrorReason.new("CLIENT_EMAIL_INVALID")
  CLIENT_EMAIL_REQUIRED = AuthenticationErrorReason.new("CLIENT_EMAIL_REQUIRED")
  CUSTOMER_NOT_FOUND = AuthenticationErrorReason.new("CUSTOMER_NOT_FOUND")
  FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT = AuthenticationErrorReason.new("FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT")
  FAILED_TO_RETRIEVE_LOGIN_COOKIE = AuthenticationErrorReason.new("FAILED_TO_RETRIEVE_LOGIN_COOKIE")
  GOOGLE_ACCOUNT_COOKIE_INVALID = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_COOKIE_INVALID")
  GOOGLE_ACCOUNT_DELETED = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_DELETED")
  GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH")
  LOGIN_COOKIE_INVALID = AuthenticationErrorReason.new("LOGIN_COOKIE_INVALID")
  LOGIN_COOKIE_REQUIRED = AuthenticationErrorReason.new("LOGIN_COOKIE_REQUIRED")
  NOT_ADS_USER = AuthenticationErrorReason.new("NOT_ADS_USER")
  OAUTH_TOKEN_DISABLED = AuthenticationErrorReason.new("OAUTH_TOKEN_DISABLED")
  OAUTH_TOKEN_EXPIRED = AuthenticationErrorReason.new("OAUTH_TOKEN_EXPIRED")
  OAUTH_TOKEN_HEADER_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_HEADER_INVALID")
  OAUTH_TOKEN_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_INVALID")
  OAUTH_TOKEN_REVOKED = AuthenticationErrorReason.new("OAUTH_TOKEN_REVOKED")
  USER_ID_INVALID = AuthenticationErrorReason.new("USER_ID_INVALID")
end

# AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  NO_CUSTOMER_FOUND = AuthorizationErrorReason.new("NO_CUSTOMER_FOUND")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_HAS_READONLY_PERMISSION = AuthorizationErrorReason.new("USER_HAS_READONLY_PERMISSION")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# UserListConversionType.Category
class UserListConversionTypeCategory < ::String
  BOOMERANG_EVENT = UserListConversionTypeCategory.new("BOOMERANG_EVENT")
  OTHER = UserListConversionTypeCategory.new("OTHER")
end

# DatabaseError.Reason
class DatabaseErrorReason < ::String
  CAMPAIGN_PRODUCT_NOT_SUPPORTED = DatabaseErrorReason.new("CAMPAIGN_PRODUCT_NOT_SUPPORTED")
  CONCURRENT_MODIFICATION = DatabaseErrorReason.new("CONCURRENT_MODIFICATION")
  DATABASE_ERROR = DatabaseErrorReason.new("DATABASE_ERROR")
  DUPLICATE_KEY = DatabaseErrorReason.new("DUPLICATE_KEY")
  PERMISSION_DENIED = DatabaseErrorReason.new("PERMISSION_DENIED")
  UNKNOWN = DatabaseErrorReason.new("UNKNOWN")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# OperationAccessDenied.Reason
class OperationAccessDeniedReason < ::String
  ACTION_NOT_PERMITTED = OperationAccessDeniedReason.new("ACTION_NOT_PERMITTED")
  ADD_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("ADD_OPERATION_NOT_PERMITTED")
  REMOVE_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("REMOVE_OPERATION_NOT_PERMITTED")
  SET_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("SET_OPERATION_NOT_PERMITTED")
  UNKNOWN = OperationAccessDeniedReason.new("UNKNOWN")
end

# Operator
class Operator < ::String
  ADD = Operator.new("ADD")
  REMOVE = Operator.new("REMOVE")
  SET = Operator.new("SET")
end

# RangeError.Reason
class RangeErrorReason < ::String
  TOO_HIGH = RangeErrorReason.new("TOO_HIGH")
  TOO_LOW = RangeErrorReason.new("TOO_LOW")
end

# ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# SizeRange
class SizeRange < ::String
  FIFTY_THOUSAND_TO_ONE_HUNDRED_THOUSAND = SizeRange.new("FIFTY_THOUSAND_TO_ONE_HUNDRED_THOUSAND")
  FIVE_HUNDRED_THOUSAND_TO_ONE_MILLION = SizeRange.new("FIVE_HUNDRED_THOUSAND_TO_ONE_MILLION")
  FIVE_MILLION_TO_TEN_MILLION = SizeRange.new("FIVE_MILLION_TO_TEN_MILLION")
  LESS_THAN_FIVE_HUNDRED = SizeRange.new("LESS_THAN_FIVE_HUNDRED")
  LESS_THAN_ONE_THOUSAND = SizeRange.new("LESS_THAN_ONE_THOUSAND")
  ONE_HUNDRED_THOUSAND_TO_THREE_HUNDRED_THOUSAND = SizeRange.new("ONE_HUNDRED_THOUSAND_TO_THREE_HUNDRED_THOUSAND")
  ONE_MILLION_TO_TWO_MILLION = SizeRange.new("ONE_MILLION_TO_TWO_MILLION")
  ONE_THOUSAND_TO_TEN_THOUSAND = SizeRange.new("ONE_THOUSAND_TO_TEN_THOUSAND")
  OVER_FIFTY_MILLION = SizeRange.new("OVER_FIFTY_MILLION")
  TEN_MILLION_TO_TWENTY_MILLION = SizeRange.new("TEN_MILLION_TO_TWENTY_MILLION")
  TEN_THOUSAND_TO_FIFTY_THOUSAND = SizeRange.new("TEN_THOUSAND_TO_FIFTY_THOUSAND")
  THIRTY_MILLION_TO_FIFTY_MILLION = SizeRange.new("THIRTY_MILLION_TO_FIFTY_MILLION")
  THREE_HUNDRED_THOUSAND_TO_FIVE_HUNDRED_THOUSAND = SizeRange.new("THREE_HUNDRED_THOUSAND_TO_FIVE_HUNDRED_THOUSAND")
  THREE_MILLION_TO_FIVE_MILLION = SizeRange.new("THREE_MILLION_TO_FIVE_MILLION")
  TWENTY_MILLION_TO_THIRTY_MILLION = SizeRange.new("TWENTY_MILLION_TO_THIRTY_MILLION")
  TWO_MILLION_TO_THREE_MILLION = SizeRange.new("TWO_MILLION_TO_THREE_MILLION")
end

# UserList.Type
class UserListType < ::String
  EXTERNAL_REMARKETING = UserListType.new("EXTERNAL_REMARKETING")
  LOGICAL = UserListType.new("LOGICAL")
  REMARKETING = UserListType.new("REMARKETING")
  UNKNOWN = UserListType.new("UNKNOWN")
end

# UserListError.Reason
class UserListErrorReason < ::String
  CONCRETE_TYPE_REQUIRED = UserListErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CONVERSION_TYPE_ID_REQUIRED = UserListErrorReason.new("CONVERSION_TYPE_ID_REQUIRED")
  DUPLICATE_CONVERSION_TYPES = UserListErrorReason.new("DUPLICATE_CONVERSION_TYPES")
  EXTERNAL_REMARKETING_USER_LIST_MUTATE_NOT_SUPPORTED = UserListErrorReason.new("EXTERNAL_REMARKETING_USER_LIST_MUTATE_NOT_SUPPORTED")
  INVALID_CONVERSION_TYPE = UserListErrorReason.new("INVALID_CONVERSION_TYPE")
  INVALID_DESCRIPTION = UserListErrorReason.new("INVALID_DESCRIPTION")
  INVALID_NAME = UserListErrorReason.new("INVALID_NAME")
  INVALID_USER_INTEREST_LOGICAL_RULE_OPERAND = UserListErrorReason.new("INVALID_USER_INTEREST_LOGICAL_RULE_OPERAND")
  INVALID_USER_LIST_LOGICAL_RULE_OPERAND = UserListErrorReason.new("INVALID_USER_LIST_LOGICAL_RULE_OPERAND")
  MEMBERSHIP_LIFE_SPAN_NOT_POSITIVE = UserListErrorReason.new("MEMBERSHIP_LIFE_SPAN_NOT_POSITIVE")
  NAME_ALREADY_USED = UserListErrorReason.new("NAME_ALREADY_USED")
  NEW_CONVERSION_TYPE_NAME_REQUIRED = UserListErrorReason.new("NEW_CONVERSION_TYPE_NAME_REQUIRED")
  OWNERSHIP_REQUIRED_FOR_SET = UserListErrorReason.new("OWNERSHIP_REQUIRED_FOR_SET")
  REMOVE_NOT_SUPPORTED = UserListErrorReason.new("REMOVE_NOT_SUPPORTED")
  USER_LIST_SERVICE_ERROR = UserListErrorReason.new("USER_LIST_SERVICE_ERROR")
end

# UserListLogicalRule.Operator
class UserListLogicalRuleOperator < ::String
  ALL = UserListLogicalRuleOperator.new("ALL")
  ANY = UserListLogicalRuleOperator.new("ANY")
  NONE = UserListLogicalRuleOperator.new("NONE")
  UNKNOWN = UserListLogicalRuleOperator.new("UNKNOWN")
end

# UserListMembershipStatus
class UserListMembershipStatus < ::String
  CLOSED = UserListMembershipStatus.new("CLOSED")
  OPEN = UserListMembershipStatus.new("OPEN")
end

# get
# - selector - AdwordsApi::V201008::UserListService::UserListSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201008::UserListService::UserListPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201008::UserListService::UserListOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201008::UserListService::UserListReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
