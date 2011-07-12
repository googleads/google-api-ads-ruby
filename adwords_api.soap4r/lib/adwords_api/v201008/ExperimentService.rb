require 'xsd/qname'

module AdwordsApi; module V201008; module ExperimentService


# ExperimentSummaryStats
# - adGroupsCount - SOAP::SOAPInt
# - adGroupCriteriaCount - SOAP::SOAPInt
class ExperimentSummaryStats
  attr_accessor :adGroupsCount
  attr_accessor :adGroupCriteriaCount

  def initialize(adGroupsCount = nil, adGroupCriteriaCount = nil)
    @adGroupsCount = adGroupsCount
    @adGroupCriteriaCount = adGroupCriteriaCount
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

# Experiment
# - id - SOAP::SOAPLong
# - controlId - SOAP::SOAPLong
# - campaignId - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - status - AdwordsApi::V201008::ExperimentService::ExperimentStatus
# - servingStatus - AdwordsApi::V201008::ExperimentService::ExperimentServingStatus
# - queryPercentage - SOAP::SOAPInt
# - startDateTime - SOAP::SOAPString
# - endDateTime - SOAP::SOAPString
# - lastModifiedDateTime - SOAP::SOAPString
# - experimentSummaryStats - AdwordsApi::V201008::ExperimentService::ExperimentSummaryStats
class Experiment
  attr_accessor :id
  attr_accessor :controlId
  attr_accessor :campaignId
  attr_accessor :name
  attr_accessor :status
  attr_accessor :servingStatus
  attr_accessor :queryPercentage
  attr_accessor :startDateTime
  attr_accessor :endDateTime
  attr_accessor :lastModifiedDateTime
  attr_accessor :experimentSummaryStats

  def initialize(id = nil, controlId = nil, campaignId = nil, name = nil, status = nil, servingStatus = nil, queryPercentage = nil, startDateTime = nil, endDateTime = nil, lastModifiedDateTime = nil, experimentSummaryStats = nil)
    @id = id
    @controlId = controlId
    @campaignId = campaignId
    @name = name
    @status = status
    @servingStatus = servingStatus
    @queryPercentage = queryPercentage
    @startDateTime = startDateTime
    @endDateTime = endDateTime
    @lastModifiedDateTime = lastModifiedDateTime
    @experimentSummaryStats = experimentSummaryStats
  end
end

# ExperimentSelector
# - experimentIds - SOAP::SOAPLong
# - campaignIds - SOAP::SOAPLong
# - includeStats - SOAP::SOAPBoolean
class ExperimentSelector
  attr_accessor :experimentIds
  attr_accessor :campaignIds
  attr_accessor :includeStats

  def initialize(experimentIds = [], campaignIds = [], includeStats = nil)
    @experimentIds = experimentIds
    @campaignIds = campaignIds
    @includeStats = includeStats
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

# ExperimentReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdwordsApi::V201008::ExperimentService::Experiment
class ExperimentReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201008::ExperimentService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# ExperimentOperation
# - operator - AdwordsApi::V201008::ExperimentService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201008::ExperimentService::Experiment
class ExperimentOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
  end
end

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
# - reason - AdwordsApi::V201008::ExperimentService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201008::ExperimentService::AuthorizationErrorReason
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

# BudgetError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::BudgetErrorReason
class BudgetError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::ClientTermsErrorReason
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

# DateError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::DateErrorReason
class DateError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::DistinctErrorReason
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

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::EntityNotFoundReason
class EntityNotFound < ApiError
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

# ExperimentServiceError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::ExperimentServiceErrorReason
class ExperimentServiceError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::InternalApiErrorReason
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

# NewEntityCreationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::NewEntityCreationErrorReason
class NewEntityCreationError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201008::ExperimentService::NotWhitelistedErrorReason
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

# NullError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::NullErrorReason
class NullError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::OperationAccessDeniedReason
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

# OperatorError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::OperatorErrorReason
class OperatorError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::QuotaCheckErrorReason
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

# QuotaError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::QuotaErrorReason
# - limit - SOAP::SOAPInt
class QuotaError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @limit = limit
  end
end

# RangeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::RangeErrorReason
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
# - reason - AdwordsApi::V201008::ExperimentService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201008::ExperimentService::ReadOnlyErrorReason
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

# RejectedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::RejectedErrorReason
class RejectedError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::RequestErrorReason
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
# - reason - AdwordsApi::V201008::ExperimentService::RequiredErrorReason
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

# SizeLimitError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::SizeLimitErrorReason
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

# StringLengthError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201008::ExperimentService::StringLengthErrorReason
class StringLengthError < ApiError
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
# - reason - AdwordsApi::V201008::ExperimentService::DatabaseErrorReason
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
# - errors - AdwordsApi::V201008::ExperimentService::ApiError
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

# ExperimentPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdwordsApi::V201008::ExperimentService::Experiment
class ExperimentPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
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

# BudgetError.Reason
class BudgetErrorReason < ::String
  BUDGET_ERROR = BudgetErrorReason.new("BUDGET_ERROR")
  BUDGET_PERIOD_NOT_AVAILABLE = BudgetErrorReason.new("BUDGET_PERIOD_NOT_AVAILABLE")
  INVALID_BUDGET_SCHEDULE = BudgetErrorReason.new("INVALID_BUDGET_SCHEDULE")
  MONEY_AMOUNT_IN_WRONG_CURRENCY = BudgetErrorReason.new("MONEY_AMOUNT_IN_WRONG_CURRENCY")
  MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC")
  MONEY_AMOUNT_TOO_LARGE = BudgetErrorReason.new("MONEY_AMOUNT_TOO_LARGE")
  NEGATIVE_MONEY_AMOUNT = BudgetErrorReason.new("NEGATIVE_MONEY_AMOUNT")
  NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT = BudgetErrorReason.new("NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
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

# DateError.Reason
class DateErrorReason < ::String
  DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL = DateErrorReason.new("DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL")
  DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE")
  EARLIER_THAN_MINIMUM_DATE = DateErrorReason.new("EARLIER_THAN_MINIMUM_DATE")
  INVALID_FIELD_VALUES_IN_DATE = DateErrorReason.new("INVALID_FIELD_VALUES_IN_DATE")
  INVALID_STRING_DATE = DateErrorReason.new("INVALID_STRING_DATE")
  INVALID_STRING_DATE_RANGE = DateErrorReason.new("INVALID_STRING_DATE_RANGE")
  INVALID_STRING_DATE_TIME = DateErrorReason.new("INVALID_STRING_DATE_TIME")
  LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("LATER_THAN_MAXIMUM_DATE")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# ExperimentServiceError.Reason
class ExperimentServiceErrorReason < ::String
  AFTER_MAXIMUM_ALLOWABLE_DATE = ExperimentServiceErrorReason.new("AFTER_MAXIMUM_ALLOWABLE_DATE")
  AOL_PARTNER_CAMPAIGNS_CANT_RUN_EXPERIMENTS = ExperimentServiceErrorReason.new("AOL_PARTNER_CAMPAIGNS_CANT_RUN_EXPERIMENTS")
  CANNOT_CHANGE_QUERY_PERCENTAGE_AFTER_EXPERIMENT_HAS_STARTED = ExperimentServiceErrorReason.new("CANNOT_CHANGE_QUERY_PERCENTAGE_AFTER_EXPERIMENT_HAS_STARTED")
  CANNOT_CREATE_EXPERIMENT_FOR_BIDDING_STRATEGY = ExperimentServiceErrorReason.new("CANNOT_CREATE_EXPERIMENT_FOR_BIDDING_STRATEGY")
  CANNOT_SET_DATE_TO_PAST = ExperimentServiceErrorReason.new("CANNOT_SET_DATE_TO_PAST")
  DATE_OUTSIDE_CAMPAIGN_DATE_RANGE = ExperimentServiceErrorReason.new("DATE_OUTSIDE_CAMPAIGN_DATE_RANGE")
  EXPERIMENT_ALREADY_STARTED = ExperimentServiceErrorReason.new("EXPERIMENT_ALREADY_STARTED")
  EXPERIMENT_ENDED = ExperimentServiceErrorReason.new("EXPERIMENT_ENDED")
  EXPERIMENT_LIMIT_EXCEEEDED = ExperimentServiceErrorReason.new("EXPERIMENT_LIMIT_EXCEEEDED")
  EXPERIMENT_NOT_ACTIVE = ExperimentServiceErrorReason.new("EXPERIMENT_NOT_ACTIVE")
  EXPERIMENT_SERVICE_ERROR = ExperimentServiceErrorReason.new("EXPERIMENT_SERVICE_ERROR")
  INVALID_EXPERIMENT_NAME = ExperimentServiceErrorReason.new("INVALID_EXPERIMENT_NAME")
  INVALID_QUERY_PERCENTAGE = ExperimentServiceErrorReason.new("INVALID_QUERY_PERCENTAGE")
  INVALID_STATUS_UPDATE = ExperimentServiceErrorReason.new("INVALID_STATUS_UPDATE")
  NO_VALID_BUDGET = ExperimentServiceErrorReason.new("NO_VALID_BUDGET")
  START_DATE_AFTER_END_DATE = ExperimentServiceErrorReason.new("START_DATE_AFTER_END_DATE")
end

# ExperimentServingStatus
class ExperimentServingStatus < ::String
  DELETED = ExperimentServingStatus.new("DELETED")
  ENDED = ExperimentServingStatus.new("ENDED")
  PENDING = ExperimentServingStatus.new("PENDING")
  PROMOTED = ExperimentServingStatus.new("PROMOTED")
  RUNNING = ExperimentServingStatus.new("RUNNING")
end

# ExperimentStatus
class ExperimentStatus < ::String
  ACTIVE = ExperimentStatus.new("ACTIVE")
  DELETED = ExperimentStatus.new("DELETED")
  PROMOTED = ExperimentStatus.new("PROMOTED")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# NewEntityCreationError.Reason
class NewEntityCreationErrorReason < ::String
  CANNOT_SET_ID_FOR_ADD = NewEntityCreationErrorReason.new("CANNOT_SET_ID_FOR_ADD")
end

# NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
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

# OperatorError.Reason
class OperatorErrorReason < ::String
  OPERATOR_NOT_SUPPORTED = OperatorErrorReason.new("OPERATOR_NOT_SUPPORTED")
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

# QuotaError.Reason
class QuotaErrorReason < ::String
  TOO_MANY_ADGROUPS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_ADGROUPS_PER_CAMPAIGN")
  TOO_MANY_CAMPAIGNS_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CAMPAIGNS_PER_ACCOUNT")
  TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT")
  TOO_MANY_KEYWORDS_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_ADGROUP")
  TOO_MANY_KEYWORDS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CAMPAIGN")
  TOO_MANY_KEYWORDS_PER_CUSTOMER = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CUSTOMER")
  TOO_MANY_SITES_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_SITES_PER_ADGROUP")
  TOO_MANY_SITES_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_SITES_PER_CAMPAIGN")
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

# RejectedError.Reason
class RejectedErrorReason < ::String
  UNKNOWN_VALUE = RejectedErrorReason.new("UNKNOWN_VALUE")
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

# SizeLimitError.Reason
class SizeLimitErrorReason < ::String
  REQUEST_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("REQUEST_SIZE_LIMIT_EXCEEDED")
  RESPONSE_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("RESPONSE_SIZE_LIMIT_EXCEEDED")
  UNKNOWN = SizeLimitErrorReason.new("UNKNOWN")
end

# StringLengthError.Reason
class StringLengthErrorReason < ::String
  TOO_LONG = StringLengthErrorReason.new("TOO_LONG")
  TOO_SHORT = StringLengthErrorReason.new("TOO_SHORT")
end

# get
# - selector - AdwordsApi::V201008::ExperimentService::ExperimentSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201008::ExperimentService::ExperimentPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201008::ExperimentService::ExperimentOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201008::ExperimentService::ExperimentReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
