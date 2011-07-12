require 'xsd/qname'

module AdwordsApi; module V201101; module UserListService


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
# - reason - AdwordsApi::V201101::UserListService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201101::UserListService::AuthorizationErrorReason
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

# ClientTermsError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::ClientTermsErrorReason
class ClientTermsError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::DatabaseErrorReason
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

# DistinctError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::DistinctErrorReason
class DistinctError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201101::UserListService::NotEmptyErrorReason
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

# NotWhitelistedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::NotWhitelistedErrorReason
class NotWhitelistedError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::OperationAccessDeniedReason
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

# QuotaCheckError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::QuotaCheckErrorReason
class QuotaCheckError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::RangeErrorReason
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

# RateExceededError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::RateExceededErrorReason
# - rateName - SOAP::SOAPString
# - rateScope - SOAP::SOAPString
# - retryAfterSeconds - SOAP::SOAPInt
class RateExceededError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :rateName
  attr_accessor :rateScope
  attr_accessor :retryAfterSeconds

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, rateName = nil, rateScope = nil, retryAfterSeconds = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @rateName = rateName
    @rateScope = rateScope
    @retryAfterSeconds = retryAfterSeconds
  end
end

# ReadOnlyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::ReadOnlyErrorReason
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

# RequestError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::RequestErrorReason
class RequestError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::RequiredErrorReason
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

# SelectorError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::SelectorErrorReason
class SelectorError < ApiError
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

# SizeLimitError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::UserListService::SizeLimitErrorReason
class SizeLimitError < ApiError
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
# - reason - AdwordsApi::V201101::UserListService::UserListErrorReason
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
# - errors - AdwordsApi::V201101::UserListService::ApiError
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
# - category - AdwordsApi::V201101::UserListService::UserListConversionTypeCategory
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

# DateRange
# - min - SOAP::SOAPString
# - max - SOAP::SOAPString
class DateRange
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
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
# - value - AdwordsApi::V201101::UserListService::UserList
class UserListReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# LogicalUserListOperand
# - userInterest - AdwordsApi::V201101::UserListService::UserInterest
# - userList - AdwordsApi::V201101::UserListService::UserList
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
# - operator - AdwordsApi::V201101::UserListService::Operator
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
# - operator - AdwordsApi::V201101::UserListService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201101::UserListService::UserList
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

# OrderBy
# - field - SOAP::SOAPString
# - sortOrder - AdwordsApi::V201101::UserListService::SortOrder
class OrderBy
  attr_accessor :field
  attr_accessor :sortOrder

  def initialize(field = nil, sortOrder = nil)
    @field = field
    @sortOrder = sortOrder
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
# - entries - AdwordsApi::V201101::UserListService::UserList
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

# Predicate
# - field - SOAP::SOAPString
# - operator - AdwordsApi::V201101::UserListService::PredicateOperator
# - values - SOAP::SOAPString
class Predicate
  attr_accessor :field
  attr_accessor :operator
  attr_accessor :values

  def initialize(field = nil, operator = nil, values = [])
    @field = field
    @operator = operator
    @values = values
  end
end

# Selector
# - fields - SOAP::SOAPString
# - predicates - AdwordsApi::V201101::UserListService::Predicate
# - dateRange - AdwordsApi::V201101::UserListService::DateRange
# - ordering - AdwordsApi::V201101::UserListService::OrderBy
# - paging - AdwordsApi::V201101::UserListService::Paging
class Selector
  attr_accessor :fields
  attr_accessor :predicates
  attr_accessor :dateRange
  attr_accessor :ordering
  attr_accessor :paging

  def initialize(fields = [], predicates = [], dateRange = nil, ordering = [], paging = nil)
    @fields = fields
    @predicates = predicates
    @dateRange = dateRange
    @ordering = ordering
    @paging = paging
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
# - sizeRange - AdwordsApi::V201101::UserListService::SizeRange
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
# - status - AdwordsApi::V201101::UserListService::UserListMembershipStatus
# - accessReason - AdwordsApi::V201101::UserListService::AccessReason
# - accountUserListStatus - AdwordsApi::V201101::UserListService::AccountUserListStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201101::UserListService::SizeRange
# - type - AdwordsApi::V201101::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
class UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :accessReason
  attr_accessor :accountUserListStatus
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, accessReason = nil, accountUserListStatus = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil)
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @accessReason = accessReason
    @accountUserListStatus = accountUserListStatus
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
# - status - AdwordsApi::V201101::UserListService::UserListMembershipStatus
# - accessReason - AdwordsApi::V201101::UserListService::AccessReason
# - accountUserListStatus - AdwordsApi::V201101::UserListService::AccountUserListStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201101::UserListService::SizeRange
# - type - AdwordsApi::V201101::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
class ExternalRemarketingUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :accessReason
  attr_accessor :accountUserListStatus
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, accessReason = nil, accountUserListStatus = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil)
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @accessReason = accessReason
    @accountUserListStatus = accountUserListStatus
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
# - status - AdwordsApi::V201101::UserListService::UserListMembershipStatus
# - accessReason - AdwordsApi::V201101::UserListService::AccessReason
# - accountUserListStatus - AdwordsApi::V201101::UserListService::AccountUserListStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201101::UserListService::SizeRange
# - type - AdwordsApi::V201101::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
# - rules - AdwordsApi::V201101::UserListService::UserListLogicalRule
class LogicalUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :accessReason
  attr_accessor :accountUserListStatus
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type
  attr_accessor :rules

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, accessReason = nil, accountUserListStatus = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil, rules = [])
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @accessReason = accessReason
    @accountUserListStatus = accountUserListStatus
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
# - status - AdwordsApi::V201101::UserListService::UserListMembershipStatus
# - accessReason - AdwordsApi::V201101::UserListService::AccessReason
# - accountUserListStatus - AdwordsApi::V201101::UserListService::AccountUserListStatus
# - membershipLifeSpan - SOAP::SOAPLong
# - size - SOAP::SOAPLong
# - sizeRange - AdwordsApi::V201101::UserListService::SizeRange
# - type - AdwordsApi::V201101::UserListService::UserListType
# - userList_Type - SOAP::SOAPString
# - conversionTypes - AdwordsApi::V201101::UserListService::UserListConversionType
class RemarketingUserList < UserList
  attr_accessor :id
  attr_accessor :isReadOnly
  attr_accessor :name
  attr_accessor :description
  attr_accessor :status
  attr_accessor :accessReason
  attr_accessor :accountUserListStatus
  attr_accessor :membershipLifeSpan
  attr_accessor :size
  attr_accessor :sizeRange
  attr_accessor :type
  attr_accessor :userList_Type
  attr_accessor :conversionTypes

  def initialize(id = nil, isReadOnly = nil, name = nil, description = nil, status = nil, accessReason = nil, accountUserListStatus = nil, membershipLifeSpan = nil, size = nil, sizeRange = nil, type = nil, userList_Type = nil, conversionTypes = [])
    @id = id
    @isReadOnly = isReadOnly
    @name = name
    @description = description
    @status = status
    @accessReason = accessReason
    @accountUserListStatus = accountUserListStatus
    @membershipLifeSpan = membershipLifeSpan
    @size = size
    @sizeRange = sizeRange
    @type = type
    @userList_Type = userList_Type
    @conversionTypes = conversionTypes
  end
end

# UserListLogicalRule
# - operator - AdwordsApi::V201101::UserListService::UserListLogicalRuleOperator
# - ruleOperands - AdwordsApi::V201101::UserListService::LogicalUserListOperand
class UserListLogicalRule
  attr_accessor :operator
  attr_accessor :ruleOperands

  def initialize(operator = nil, ruleOperands = [])
    @operator = operator
    @ruleOperands = ruleOperands
  end
end

# AccessReason
class AccessReason < ::String
  LICENSED = AccessReason.new("LICENSED")
  OWNED = AccessReason.new("OWNED")
  SHARED = AccessReason.new("SHARED")
  SUBSCRIBED = AccessReason.new("SUBSCRIBED")
end

# AccountUserListStatus
class AccountUserListStatus < ::String
  ACTIVE = AccountUserListStatus.new("ACTIVE")
  INACTIVE = AccountUserListStatus.new("INACTIVE")
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

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
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

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
  DUPLICATE_TYPE = DistinctErrorReason.new("DUPLICATE_TYPE")
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

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# OperationAccessDenied.Reason
class OperationAccessDeniedReason < ::String
  ACTION_NOT_PERMITTED = OperationAccessDeniedReason.new("ACTION_NOT_PERMITTED")
  ADD_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("ADD_OPERATION_NOT_PERMITTED")
  MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT = OperationAccessDeniedReason.new("MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT")
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

# Predicate.Operator
class PredicateOperator < ::String
  CONTAINS = PredicateOperator.new("CONTAINS")
  CONTAINS_IGNORE_CASE = PredicateOperator.new("CONTAINS_IGNORE_CASE")
  DOES_NOT_CONTAIN = PredicateOperator.new("DOES_NOT_CONTAIN")
  DOES_NOT_CONTAIN_IGNORE_CASE = PredicateOperator.new("DOES_NOT_CONTAIN_IGNORE_CASE")
  EQUALS = PredicateOperator.new("EQUALS")
  GREATER_THAN = PredicateOperator.new("GREATER_THAN")
  GREATER_THAN_EQUALS = PredicateOperator.new("GREATER_THAN_EQUALS")
  IN = PredicateOperator.new("IN")
  LESS_THAN = PredicateOperator.new("LESS_THAN")
  LESS_THAN_EQUALS = PredicateOperator.new("LESS_THAN_EQUALS")
  NOT_EQUALS = PredicateOperator.new("NOT_EQUALS")
  NOT_IN = PredicateOperator.new("NOT_IN")
  STARTS_WITH = PredicateOperator.new("STARTS_WITH")
  STARTS_WITH_IGNORE_CASE = PredicateOperator.new("STARTS_WITH_IGNORE_CASE")
  UNKNOWN = PredicateOperator.new("UNKNOWN")
end

# QuotaCheckError.Reason
class QuotaCheckErrorReason < ::String
  ACCOUNT_DELINQUENT = QuotaCheckErrorReason.new("ACCOUNT_DELINQUENT")
  ACCOUNT_INACCESSIBLE = QuotaCheckErrorReason.new("ACCOUNT_INACCESSIBLE")
  ACCOUNT_INACTIVE = QuotaCheckErrorReason.new("ACCOUNT_INACTIVE")
  INCOMPLETE_SIGNUP = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP")
  INCOMPLETE_SIGNUP_LATEST_ADWORDS_API_TNC_NOT_AGREED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_LATEST_ADWORDS_API_TNC_NOT_AGREED")
  INCOMPLETE_SIGNUP_NO_BILLING_INFO = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_NO_BILLING_INFO")
  INCOMPLETE_SIGNUP_USER_INFO_MISSING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_MISSING")
  INCOMPLETE_SIGNUP_USER_INFO_PENDING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_PENDING")
  INCOMPLETE_SIGNUP_USER_INFO_REJECTED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_REJECTED")
  INVALID_TOKEN_HEADER = QuotaCheckErrorReason.new("INVALID_TOKEN_HEADER")
  MONTHLY_BUDGET_REACHED = QuotaCheckErrorReason.new("MONTHLY_BUDGET_REACHED")
  QUOTA_EXCEEDED = QuotaCheckErrorReason.new("QUOTA_EXCEEDED")
end

# RangeError.Reason
class RangeErrorReason < ::String
  TOO_HIGH = RangeErrorReason.new("TOO_HIGH")
  TOO_LOW = RangeErrorReason.new("TOO_LOW")
end

# RateExceededError.Reason
class RateExceededErrorReason < ::String
  RATE_EXCEEDED = RateExceededErrorReason.new("RATE_EXCEEDED")
end

# ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# RequestError.Reason
class RequestErrorReason < ::String
  INVALID_INPUT = RequestErrorReason.new("INVALID_INPUT")
  UNKNOWN = RequestErrorReason.new("UNKNOWN")
end

# RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# SelectorError.Reason
class SelectorErrorReason < ::String
  INVALID_FIELD_NAME = SelectorErrorReason.new("INVALID_FIELD_NAME")
  INVALID_FIELD_SELECTION = SelectorErrorReason.new("INVALID_FIELD_SELECTION")
  INVALID_PREDICATE_ENUM_VALUE = SelectorErrorReason.new("INVALID_PREDICATE_ENUM_VALUE")
  INVALID_PREDICATE_FIELD_NAME = SelectorErrorReason.new("INVALID_PREDICATE_FIELD_NAME")
  INVALID_PREDICATE_OPERATOR = SelectorErrorReason.new("INVALID_PREDICATE_OPERATOR")
  INVALID_PREDICATE_VALUE = SelectorErrorReason.new("INVALID_PREDICATE_VALUE")
  MISSING_FIELDS = SelectorErrorReason.new("MISSING_FIELDS")
  MISSING_PREDICATE_OPERATOR = SelectorErrorReason.new("MISSING_PREDICATE_OPERATOR")
  MISSING_PREDICATE_VALUES = SelectorErrorReason.new("MISSING_PREDICATE_VALUES")
  OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES = SelectorErrorReason.new("OPERATOR_DOES_NOT_SUPPORT_MULTIPLE_VALUES")
  UNKNOWN_ERROR = SelectorErrorReason.new("UNKNOWN_ERROR")
end

# SizeLimitError.Reason
class SizeLimitErrorReason < ::String
  REQUEST_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("REQUEST_SIZE_LIMIT_EXCEEDED")
  RESPONSE_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("RESPONSE_SIZE_LIMIT_EXCEEDED")
  UNKNOWN = SizeLimitErrorReason.new("UNKNOWN")
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

# SortOrder
class SortOrder < ::String
  ASCENDING = SortOrder.new("ASCENDING")
  DESCENDING = SortOrder.new("DESCENDING")
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
  USER_LIST_MUTATE_NOT_SUPPORTED = UserListErrorReason.new("USER_LIST_MUTATE_NOT_SUPPORTED")
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
# - serviceSelector - AdwordsApi::V201101::UserListService::Selector
class Get #:nodoc: all
  attr_accessor :serviceSelector

  def initialize(serviceSelector = nil)
    @serviceSelector = serviceSelector
  end
end

# getResponse
# - rval - AdwordsApi::V201101::UserListService::UserListPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201101::UserListService::UserListOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201101::UserListService::UserListReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
