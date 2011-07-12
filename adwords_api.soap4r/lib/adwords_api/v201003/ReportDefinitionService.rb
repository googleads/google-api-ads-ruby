require 'xsd/qname'

module AdwordsApi; module V201003; module ReportDefinitionService


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
# - operator - AdwordsApi::V201003::ReportDefinitionService::PredicateOperator
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

# ReportDefinitionField
# - fieldName - SOAP::SOAPString
# - fieldType - SOAP::SOAPString
# - enumValues - SOAP::SOAPString
# - canSelect - SOAP::SOAPBoolean
# - canFilter - SOAP::SOAPBoolean
class ReportDefinitionField
  attr_accessor :fieldName
  attr_accessor :fieldType
  attr_accessor :enumValues
  attr_accessor :canSelect
  attr_accessor :canFilter

  def initialize(fieldName = nil, fieldType = nil, enumValues = [], canSelect = nil, canFilter = nil)
    @fieldName = fieldName
    @fieldType = fieldType
    @enumValues = enumValues
    @canSelect = canSelect
    @canFilter = canFilter
  end
end

# SoapHeader
# - authToken - SOAP::SOAPString
# - clientCustomerId - SOAP::SOAPString
# - clientEmail - SOAP::SOAPString
# - developerToken - SOAP::SOAPString
# - userAgent - SOAP::SOAPString
# - validateOnly - SOAP::SOAPBoolean
class SoapHeader
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail
  attr_accessor :developerToken
  attr_accessor :userAgent
  attr_accessor :validateOnly

  def initialize(authToken = nil, clientCustomerId = nil, clientEmail = nil, developerToken = nil, userAgent = nil, validateOnly = nil)
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
    @developerToken = developerToken
    @userAgent = userAgent
    @validateOnly = validateOnly
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

# Selector
# - fields - SOAP::SOAPString
# - predicates - AdwordsApi::V201003::ReportDefinitionService::Predicate
# - dateRange - AdwordsApi::V201003::ReportDefinitionService::DateRange
class Selector
  attr_accessor :fields
  attr_accessor :predicates
  attr_accessor :dateRange

  def initialize(fields = [], predicates = [], dateRange = nil)
    @fields = fields
    @predicates = predicates
    @dateRange = dateRange
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::ClientTermsErrorReason
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

# CollectionSizeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::ReportDefinitionService::CollectionSizeErrorReason
class CollectionSizeError < ApiError
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::DistinctErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::InternalApiErrorReason
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

# NotWhitelistedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::ReportDefinitionService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::NullErrorReason
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

# OperatorError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::ReportDefinitionService::OperatorErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::RangeErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::ReadOnlyErrorReason
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

# ReportDefinitionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionErrorReason
class ReportDefinitionError < ApiError
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::RequestErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::RequiredErrorReason
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
# - reason - AdwordsApi::V201003::ReportDefinitionService::SizeLimitErrorReason
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
# - errors - AdwordsApi::V201003::ReportDefinitionService::ApiError
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

# ReportDefinitionSelector
# - paging - AdwordsApi::V201003::ReportDefinitionService::Paging
class ReportDefinitionSelector
  attr_accessor :paging

  def initialize(paging = nil)
    @paging = paging
  end
end

# ReportDefinition
# - id - SOAP::SOAPLong
# - selector - AdwordsApi::V201003::ReportDefinitionService::Selector
# - reportName - SOAP::SOAPString
# - reportType - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionReportType
# - hasAttachment - SOAP::SOAPBoolean
# - dateRangeType - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionDateRangeType
# - downloadFormat - AdwordsApi::V201003::ReportDefinitionService::DownloadFormat
# - creationTime - SOAP::SOAPString
class ReportDefinition
  attr_accessor :id
  attr_accessor :selector
  attr_accessor :reportName
  attr_accessor :reportType
  attr_accessor :hasAttachment
  attr_accessor :dateRangeType
  attr_accessor :downloadFormat
  attr_accessor :creationTime

  def initialize(id = nil, selector = nil, reportName = nil, reportType = nil, hasAttachment = nil, dateRangeType = nil, downloadFormat = nil, creationTime = nil)
    @id = id
    @selector = selector
    @reportName = reportName
    @reportType = reportType
    @hasAttachment = hasAttachment
    @dateRangeType = dateRangeType
    @downloadFormat = downloadFormat
    @creationTime = creationTime
  end
end

# ReportDefinitionPage
# - entries - AdwordsApi::V201003::ReportDefinitionService::ReportDefinition
# - totalNumEntries - SOAP::SOAPInt
class ReportDefinitionPage
  attr_accessor :entries
  attr_accessor :totalNumEntries

  def initialize(entries = [], totalNumEntries = nil)
    @entries = entries
    @totalNumEntries = totalNumEntries
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201003::ReportDefinitionService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# ReportDefinitionOperation
# - operator - AdwordsApi::V201003::ReportDefinitionService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::ReportDefinitionService::ReportDefinition
class ReportDefinitionOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
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

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# CollectionSizeError.Reason
class CollectionSizeErrorReason < ::String
  TOO_FEW = CollectionSizeErrorReason.new("TOO_FEW")
  TOO_MANY = CollectionSizeErrorReason.new("TOO_MANY")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# DownloadFormat
class DownloadFormat < ::String
  CSV = DownloadFormat.new("CSV")
  CSVFOREXCEL = DownloadFormat.new("CSVFOREXCEL")
  GZIPPED_CSV = DownloadFormat.new("GZIPPED_CSV")
  GZIPPED_XML = DownloadFormat.new("GZIPPED_XML")
  TSV = DownloadFormat.new("TSV")
  XML = DownloadFormat.new("XML")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
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

# ReportDefinition.DateRangeType
class ReportDefinitionDateRangeType < ::String
  ALL_TIME = ReportDefinitionDateRangeType.new("ALL_TIME")
  CUSTOM_DATE = ReportDefinitionDateRangeType.new("CUSTOM_DATE")
  LAST_7_DAYS = ReportDefinitionDateRangeType.new("LAST_7_DAYS")
  LAST_BUSINESS_WEEK = ReportDefinitionDateRangeType.new("LAST_BUSINESS_WEEK")
  LAST_MONTH = ReportDefinitionDateRangeType.new("LAST_MONTH")
  LAST_WEEK = ReportDefinitionDateRangeType.new("LAST_WEEK")
  THIS_MONTH = ReportDefinitionDateRangeType.new("THIS_MONTH")
  TODAY = ReportDefinitionDateRangeType.new("TODAY")
  YESTERDAY = ReportDefinitionDateRangeType.new("YESTERDAY")
end

# ReportDefinition.ReportType
class ReportDefinitionReportType < ::String
  ADGROUP_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("ADGROUP_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT")
  ADGROUP_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("ADGROUP_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT")
  ADGROUP_PERFORMANCE_REPORT = ReportDefinitionReportType.new("ADGROUP_PERFORMANCE_REPORT")
  AD_PERFORMANCE_REPORT = ReportDefinitionReportType.new("AD_PERFORMANCE_REPORT")
  AUTOMATIC_PLACEMENTS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("AUTOMATIC_PLACEMENTS_PERFORMANCE_REPORT")
  CAMPAIGN_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("CAMPAIGN_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT")
  CAMPAIGN_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("CAMPAIGN_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT")
  CAMPAIGN_PERFORMANCE_REPORT = ReportDefinitionReportType.new("CAMPAIGN_PERFORMANCE_REPORT")
  KEYWORDS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("KEYWORDS_PERFORMANCE_REPORT")
  MANAGED_PLACEMENTS_PERFORMANCE_REPORT = ReportDefinitionReportType.new("MANAGED_PLACEMENTS_PERFORMANCE_REPORT")
  SEARCH_QUERY_PERFORMANCE_REPORT = ReportDefinitionReportType.new("SEARCH_QUERY_PERFORMANCE_REPORT")
  URL_PERFORMANCE_REPORT = ReportDefinitionReportType.new("URL_PERFORMANCE_REPORT")
end

# ReportDefinitionError.Reason
class ReportDefinitionErrorReason < ::String
  INVALID_COLUMN_NAME_FOR_REPORT = ReportDefinitionErrorReason.new("INVALID_COLUMN_NAME_FOR_REPORT")
  INVALID_FIELD_NAME_FOR_REPORT = ReportDefinitionErrorReason.new("INVALID_FIELD_NAME_FOR_REPORT")
  INVALID_REPORT_DEFINITION_ID = ReportDefinitionErrorReason.new("INVALID_REPORT_DEFINITION_ID")
  INVALID_VIEW = ReportDefinitionErrorReason.new("INVALID_VIEW")
  NO_ENUMS_FOR_THIS_COLUMN_NAME = ReportDefinitionErrorReason.new("NO_ENUMS_FOR_THIS_COLUMN_NAME")
  REPORT_SELECTOR_CANNOT_BE_NULL = ReportDefinitionErrorReason.new("REPORT_SELECTOR_CANNOT_BE_NULL")
  UNABLE_TO_FIND_MAPPING_FOR_THIS_REPORT = ReportDefinitionErrorReason.new("UNABLE_TO_FIND_MAPPING_FOR_THIS_REPORT")
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

# get
# - selector - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# getReportFields
# - reportType - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionReportType
class GetReportFields #:nodoc: all
  attr_accessor :reportType

  def initialize(reportType = nil)
    @reportType = reportType
  end
end

# getReportFieldsResponse
# - rval - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionField
class GetReportFieldsResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = [])
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201003::ReportDefinitionService::ReportDefinitionOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201003::ReportDefinitionService::ReportDefinition
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = [])
    @rval = rval
  end
end


end; end; end
