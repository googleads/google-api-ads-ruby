require 'xsd/qname'

module AdwordsApi; module V201101; module AdGroupService


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

# OrderBy
# - field - SOAP::SOAPString
# - sortOrder - AdwordsApi::V201101::AdGroupService::SortOrder
class OrderBy
  attr_accessor :field
  attr_accessor :sortOrder

  def initialize(field = nil, sortOrder = nil)
    @field = field
    @sortOrder = sortOrder
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
# - operator - AdwordsApi::V201101::AdGroupService::PredicateOperator
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

# ComparableValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# Money
# - comparableValue_Type - SOAP::SOAPString
# - microAmount - SOAP::SOAPLong
class Money < ComparableValue
  attr_accessor :comparableValue_Type
  attr_accessor :microAmount

  def initialize(comparableValue_Type = nil, microAmount = nil)
    @comparableValue_Type = comparableValue_Type
    @microAmount = microAmount
  end
end

# NumberValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class NumberValue < ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# DoubleValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPDouble
class DoubleValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# LongValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPLong
class LongValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# Selector
# - fields - SOAP::SOAPString
# - predicates - AdwordsApi::V201101::AdGroupService::Predicate
# - dateRange - AdwordsApi::V201101::AdGroupService::DateRange
# - ordering - AdwordsApi::V201101::AdGroupService::OrderBy
# - paging - AdwordsApi::V201101::AdGroupService::Paging
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

# Stats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201101::AdGroupService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201101::AdGroupService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201101::AdGroupService::Money
# - averageCpm - AdwordsApi::V201101::AdGroupService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201101::AdGroupService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201101::AdGroupService::Money
# - viewThroughConversions - SOAP::SOAPLong
# - totalConvValue - SOAP::SOAPLong
# - valuePerConv - SOAP::SOAPDouble
# - valuePerConvManyPerClick - SOAP::SOAPDouble
# - invalidClicks - SOAP::SOAPLong
# - invalidClickRate - SOAP::SOAPDouble
# - stats_Type - SOAP::SOAPString
class Stats
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :network
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :cost
  attr_accessor :averagePosition
  attr_accessor :averageCpc
  attr_accessor :averageCpm
  attr_accessor :ctr
  attr_accessor :conversions
  attr_accessor :conversionRate
  attr_accessor :costPerConversion
  attr_accessor :conversionsManyPerClick
  attr_accessor :conversionRateManyPerClick
  attr_accessor :costPerConversionManyPerClick
  attr_accessor :viewThroughConversions
  attr_accessor :totalConvValue
  attr_accessor :valuePerConv
  attr_accessor :valuePerConvManyPerClick
  attr_accessor :invalidClicks
  attr_accessor :invalidClickRate
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, viewThroughConversions = nil, totalConvValue = nil, valuePerConv = nil, valuePerConvManyPerClick = nil, invalidClicks = nil, invalidClickRate = nil, stats_Type = nil)
    @startDate = startDate
    @endDate = endDate
    @network = network
    @clicks = clicks
    @impressions = impressions
    @cost = cost
    @averagePosition = averagePosition
    @averageCpc = averageCpc
    @averageCpm = averageCpm
    @ctr = ctr
    @conversions = conversions
    @conversionRate = conversionRate
    @costPerConversion = costPerConversion
    @conversionsManyPerClick = conversionsManyPerClick
    @conversionRateManyPerClick = conversionRateManyPerClick
    @costPerConversionManyPerClick = costPerConversionManyPerClick
    @viewThroughConversions = viewThroughConversions
    @totalConvValue = totalConvValue
    @valuePerConv = valuePerConv
    @valuePerConvManyPerClick = valuePerConvManyPerClick
    @invalidClicks = invalidClicks
    @invalidClickRate = invalidClickRate
    @stats_Type = stats_Type
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

# AdGroupServiceError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::AdGroupService::AdGroupServiceErrorReason
# - adGroupId - SOAP::SOAPLong
class AdGroupServiceError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :adGroupId

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, adGroupId = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @adGroupId = adGroupId
  end
end

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::AdGroupService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::AuthorizationErrorReason
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

# BiddingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::AdGroupService::BiddingErrorReason
class BiddingError < ApiError
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
# - reason - AdwordsApi::V201101::AdGroupService::ClientTermsErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::DateErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::DistinctErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::EntityNotFoundReason
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

# InternalApiError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::AdGroupService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::NewEntityCreationErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::NullErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::OperationAccessDeniedReason
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
# - reason - AdwordsApi::V201101::AdGroupService::OperatorErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::QuotaErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::RangeErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::ReadOnlyErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::RejectedErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::RequestErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::RequiredErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::SelectorErrorReason
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
# - reason - AdwordsApi::V201101::AdGroupService::SizeLimitErrorReason
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

# StatsQueryError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::AdGroupService::StatsQueryErrorReason
class StatsQueryError < ApiError
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
# - reason - AdwordsApi::V201101::AdGroupService::DatabaseErrorReason
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
# - errors - AdwordsApi::V201101::AdGroupService::ApiError
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

# Bid
# - amount - AdwordsApi::V201101::AdGroupService::Money
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# BidMultiplier
# - multiplier - SOAP::SOAPDouble
# - multipliedBid - AdwordsApi::V201101::AdGroupService::Bid
class BidMultiplier
  attr_accessor :multiplier
  attr_accessor :multipliedBid

  def initialize(multiplier = nil, multipliedBid = nil)
    @multiplier = multiplier
    @multipliedBid = multipliedBid
  end
end

# AdGroupBids
# abstract
# - adGroupBids_Type - SOAP::SOAPString
class AdGroupBids
  attr_accessor :adGroupBids_Type

  def initialize(adGroupBids_Type = nil)
    @adGroupBids_Type = adGroupBids_Type
  end
end

# PercentCPAAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - percentCpa - SOAP::SOAPInt
class PercentCPAAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :percentCpa

  def initialize(adGroupBids_Type = nil, percentCpa = nil)
    @adGroupBids_Type = adGroupBids_Type
    @percentCpa = percentCpa
  end
end

# BudgetOptimizerAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - proxyKeywordMaxCpc - AdwordsApi::V201101::AdGroupService::Bid
# - proxySiteMaxCpc - AdwordsApi::V201101::AdGroupService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class BudgetOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :proxyKeywordMaxCpc
  attr_accessor :proxySiteMaxCpc
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupBids_Type = nil, proxyKeywordMaxCpc = nil, proxySiteMaxCpc = nil, enhancedCpcEnabled = nil)
    @adGroupBids_Type = adGroupBids_Type
    @proxyKeywordMaxCpc = proxyKeywordMaxCpc
    @proxySiteMaxCpc = proxySiteMaxCpc
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ConversionOptimizerAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - targetCpa - AdwordsApi::V201101::AdGroupService::Bid
# - conversionOptimizerBidType - AdwordsApi::V201101::AdGroupService::ConversionOptimizerBidType
# - deduplicationMode - AdwordsApi::V201101::AdGroupService::ConversionDeduplicationMode
class ConversionOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :targetCpa
  attr_accessor :conversionOptimizerBidType
  attr_accessor :deduplicationMode

  def initialize(adGroupBids_Type = nil, targetCpa = nil, conversionOptimizerBidType = nil, deduplicationMode = nil)
    @adGroupBids_Type = adGroupBids_Type
    @targetCpa = targetCpa
    @conversionOptimizerBidType = conversionOptimizerBidType
    @deduplicationMode = deduplicationMode
  end
end

# ManualCPCAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - keywordMaxCpc - AdwordsApi::V201101::AdGroupService::Bid
# - keywordContentMaxCpc - AdwordsApi::V201101::AdGroupService::Bid
# - siteMaxCpc - AdwordsApi::V201101::AdGroupService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class ManualCPCAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :keywordMaxCpc
  attr_accessor :keywordContentMaxCpc
  attr_accessor :siteMaxCpc
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupBids_Type = nil, keywordMaxCpc = nil, keywordContentMaxCpc = nil, siteMaxCpc = nil, enhancedCpcEnabled = nil)
    @adGroupBids_Type = adGroupBids_Type
    @keywordMaxCpc = keywordMaxCpc
    @keywordContentMaxCpc = keywordContentMaxCpc
    @siteMaxCpc = siteMaxCpc
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ManualCPMAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - maxCpm - AdwordsApi::V201101::AdGroupService::Bid
class ManualCPMAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :maxCpm

  def initialize(adGroupBids_Type = nil, maxCpm = nil)
    @adGroupBids_Type = adGroupBids_Type
    @maxCpm = maxCpm
  end
end

# AdGroupExperimentBidMultipliers
# abstract
# - adGroupExperimentBidMultipliers_Type - SOAP::SOAPString
class AdGroupExperimentBidMultipliers
  attr_accessor :adGroupExperimentBidMultipliers_Type

  def initialize(adGroupExperimentBidMultipliers_Type = nil)
    @adGroupExperimentBidMultipliers_Type = adGroupExperimentBidMultipliers_Type
  end
end

# ManualCPCAdGroupExperimentBidMultipliers
# - adGroupExperimentBidMultipliers_Type - SOAP::SOAPString
# - maxCpcMultiplier - AdwordsApi::V201101::AdGroupService::BidMultiplier
# - maxContentCpcMultiplier - AdwordsApi::V201101::AdGroupService::BidMultiplier
class ManualCPCAdGroupExperimentBidMultipliers < AdGroupExperimentBidMultipliers
  attr_accessor :adGroupExperimentBidMultipliers_Type
  attr_accessor :maxCpcMultiplier
  attr_accessor :maxContentCpcMultiplier

  def initialize(adGroupExperimentBidMultipliers_Type = nil, maxCpcMultiplier = nil, maxContentCpcMultiplier = nil)
    @adGroupExperimentBidMultipliers_Type = adGroupExperimentBidMultipliers_Type
    @maxCpcMultiplier = maxCpcMultiplier
    @maxContentCpcMultiplier = maxContentCpcMultiplier
  end
end

# ManualCPMAdGroupExperimentBidMultipliers
# - adGroupExperimentBidMultipliers_Type - SOAP::SOAPString
# - maxCpmMultiplier - AdwordsApi::V201101::AdGroupService::BidMultiplier
class ManualCPMAdGroupExperimentBidMultipliers < AdGroupExperimentBidMultipliers
  attr_accessor :adGroupExperimentBidMultipliers_Type
  attr_accessor :maxCpmMultiplier

  def initialize(adGroupExperimentBidMultipliers_Type = nil, maxCpmMultiplier = nil)
    @adGroupExperimentBidMultipliers_Type = adGroupExperimentBidMultipliers_Type
    @maxCpmMultiplier = maxCpmMultiplier
  end
end

# AdGroupExperimentData
# - experimentId - SOAP::SOAPLong
# - experimentDeltaStatus - AdwordsApi::V201101::AdGroupService::ExperimentDeltaStatus
# - experimentDataStatus - AdwordsApi::V201101::AdGroupService::ExperimentDataStatus
# - experimentBidMultipliers - AdwordsApi::V201101::AdGroupService::AdGroupExperimentBidMultipliers
class AdGroupExperimentData
  attr_accessor :experimentId
  attr_accessor :experimentDeltaStatus
  attr_accessor :experimentDataStatus
  attr_accessor :experimentBidMultipliers

  def initialize(experimentId = nil, experimentDeltaStatus = nil, experimentDataStatus = nil, experimentBidMultipliers = nil)
    @experimentId = experimentId
    @experimentDeltaStatus = experimentDeltaStatus
    @experimentDataStatus = experimentDataStatus
    @experimentBidMultipliers = experimentBidMultipliers
  end
end

# AdGroup
# - id - SOAP::SOAPLong
# - campaignId - SOAP::SOAPLong
# - campaignName - SOAP::SOAPString
# - name - SOAP::SOAPString
# - status - AdwordsApi::V201101::AdGroupService::AdGroupStatus
# - bids - AdwordsApi::V201101::AdGroupService::AdGroupBids
# - experimentData - AdwordsApi::V201101::AdGroupService::AdGroupExperimentData
# - stats - AdwordsApi::V201101::AdGroupService::Stats
class AdGroup
  attr_accessor :id
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :name
  attr_accessor :status
  attr_accessor :bids
  attr_accessor :experimentData
  attr_accessor :stats

  def initialize(id = nil, campaignId = nil, campaignName = nil, name = nil, status = nil, bids = nil, experimentData = nil, stats = nil)
    @id = id
    @campaignId = campaignId
    @campaignName = campaignName
    @name = name
    @status = status
    @bids = bids
    @experimentData = experimentData
    @stats = stats
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

# AdGroupReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::AdGroupService::AdGroup
class AdGroupReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201101::AdGroupService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# AdGroupOperation
# - operator - AdwordsApi::V201101::AdGroupService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201101::AdGroupService::AdGroup
class AdGroupOperation < Operation
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

# AdGroupPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdwordsApi::V201101::AdGroupService::AdGroup
class AdGroupPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# AdGroup.Status
class AdGroupStatus < ::String
  DELETED = AdGroupStatus.new("DELETED")
  ENABLED = AdGroupStatus.new("ENABLED")
  PAUSED = AdGroupStatus.new("PAUSED")
end

# AdGroupServiceError.Reason
class AdGroupServiceErrorReason < ::String
  ADVERTISER_NOT_ON_CONTENT_NETWORK = AdGroupServiceErrorReason.new("ADVERTISER_NOT_ON_CONTENT_NETWORK")
  BID_TOO_BIG = AdGroupServiceErrorReason.new("BID_TOO_BIG")
  BID_TOO_SMALL = AdGroupServiceErrorReason.new("BID_TOO_SMALL")
  BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH = AdGroupServiceErrorReason.new("BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH")
  DUPLICATE_ADGROUP_NAME = AdGroupServiceErrorReason.new("DUPLICATE_ADGROUP_NAME")
  INVALID_ADGROUP_ID = AdGroupServiceErrorReason.new("INVALID_ADGROUP_ID")
  INVALID_ADGROUP_NAME = AdGroupServiceErrorReason.new("INVALID_ADGROUP_NAME")
  INVALID_BID = AdGroupServiceErrorReason.new("INVALID_BID")
  MISSING_ADGROUP_NAME = AdGroupServiceErrorReason.new("MISSING_ADGROUP_NAME")
  USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED = AdGroupServiceErrorReason.new("USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED")
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

# BiddingError.Reason
class BiddingErrorReason < ::String
  ADGROUPS_DO_NOT_MATCH_CONSTRAINT = BiddingErrorReason.new("ADGROUPS_DO_NOT_MATCH_CONSTRAINT")
  AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER = BiddingErrorReason.new("AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER")
  BAD_BID_COMBINATION = BiddingErrorReason.new("BAD_BID_COMBINATION")
  BIDS_DO_NOT_FULFILL_SPEC = BiddingErrorReason.new("BIDS_DO_NOT_FULFILL_SPEC")
  BID_AMOUNT_REQUIRED = BiddingErrorReason.new("BID_AMOUNT_REQUIRED")
  BID_ERROR = BiddingErrorReason.new("BID_ERROR")
  BID_INCOMPATIBLE_WITH_ADGROUP = BiddingErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  BID_TOO_BIG = BiddingErrorReason.new("BID_TOO_BIG")
  BID_TOO_HIGH_FOR_DAILY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_DAILY_BUDGET")
  BID_TOO_HIGH_FOR_MONTHLY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_MONTHLY_BUDGET")
  BID_TOO_MANY_FRACTIONAL_DIGITS = BiddingErrorReason.new("BID_TOO_MANY_FRACTIONAL_DIGITS")
  BID_TOO_SMALL = BiddingErrorReason.new("BID_TOO_SMALL")
  BID_TO_POSITION_NOT_ENABLED = BiddingErrorReason.new("BID_TO_POSITION_NOT_ENABLED")
  BID_UNIVERSAL_CRITERIA_EXPECTED = BiddingErrorReason.new("BID_UNIVERSAL_CRITERIA_EXPECTED")
  BOTTOM_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("BOTTOM_POSITION_OUT_OF_RANGE")
  CAMPAIGN_ALREADY_SET = BiddingErrorReason.new("CAMPAIGN_ALREADY_SET")
  CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER = BiddingErrorReason.new("CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER")
  CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER = BiddingErrorReason.new("CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER")
  CANNOT_EXCLUDE_DEFAULT = BiddingErrorReason.new("CANNOT_EXCLUDE_DEFAULT")
  CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL = BiddingErrorReason.new("CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL")
  CANNOT_SET_SITE_MAX_CPC = BiddingErrorReason.new("CANNOT_SET_SITE_MAX_CPC")
  CANNOT_TARGET_AND_EXCLUDE = BiddingErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANNOT_TARGET_UNIVERSE = BiddingErrorReason.new("CANNOT_TARGET_UNIVERSE")
  CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING = BiddingErrorReason.new("CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING")
  CRITERION_NOT_TARGETED = BiddingErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = BiddingErrorReason.new("CURRENCY_MISMATCH")
  GOAL_DOES_NOT_FULFILL_SPEC = BiddingErrorReason.new("GOAL_DOES_NOT_FULFILL_SPEC")
  GOAL_VALIDATION_FAILED = BiddingErrorReason.new("GOAL_VALIDATION_FAILED")
  ILLEGAL_URL = BiddingErrorReason.new("ILLEGAL_URL")
  MANY_PER_CLICK_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("MANY_PER_CLICK_NOT_AVAILABLE_FOR_CUSTOMER")
  MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS = BiddingErrorReason.new("MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS")
  NETWORK_NOT_OVERRIDEABLE = BiddingErrorReason.new("NETWORK_NOT_OVERRIDEABLE")
  NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION = BiddingErrorReason.new("NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION")
  NON_POSITIVE_BID = BiddingErrorReason.new("NON_POSITIVE_BID")
  NO_DESTINATION_URL_SPECIFIED = BiddingErrorReason.new("NO_DESTINATION_URL_SPECIFIED")
  NO_EFFECTIVE_BID = BiddingErrorReason.new("NO_EFFECTIVE_BID")
  PAY_PER_CONVERSION_NOT_ALLOWED_WITH_MANY_PER_CLICK = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_ALLOWED_WITH_MANY_PER_CLICK")
  PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA")
  PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER")
  POSITION_PREFERENCE_NOT_ENABLED = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_ENABLED")
  POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE")
  PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM = BiddingErrorReason.new("PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM")
  PREFERRED_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("PREFERRED_POSITION_OUT_OF_RANGE")
  PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE = BiddingErrorReason.new("PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE")
  PROXY_NOT_ENABLED = BiddingErrorReason.new("PROXY_NOT_ENABLED")
  TARGET_CPA_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("TARGET_CPA_NOT_AVAILABLE_FOR_CUSTOMER")
  TRANSITION_DOES_NOT_SUPPORT_GOAL = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_GOAL")
  TRANSITION_DOES_NOT_SUPPORT_OPTION = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_OPTION")
  UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION")
  UNSUPPORTED_STYLE = BiddingErrorReason.new("UNSUPPORTED_STYLE")
  UNSUPPORTED_STYLE_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_STYLE_TRANSITION")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# ConversionDeduplicationMode
class ConversionDeduplicationMode < ::String
  MANY_PER_CLICK = ConversionDeduplicationMode.new("MANY_PER_CLICK")
  ONE_PER_CLICK = ConversionDeduplicationMode.new("ONE_PER_CLICK")
end

# ConversionOptimizerBidType
class ConversionOptimizerBidType < ::String
  MAX_CPA = ConversionOptimizerBidType.new("MAX_CPA")
  TARGET_CPA = ConversionOptimizerBidType.new("TARGET_CPA")
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
  DUPLICATE_TYPE = DistinctErrorReason.new("DUPLICATE_TYPE")
end

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# ExperimentDataStatus
class ExperimentDataStatus < ::String
  ACTIVE = ExperimentDataStatus.new("ACTIVE")
  DELETED = ExperimentDataStatus.new("DELETED")
  UNKNOWN = ExperimentDataStatus.new("UNKNOWN")
end

# ExperimentDeltaStatus
class ExperimentDeltaStatus < ::String
  CONTROL_ONLY = ExperimentDeltaStatus.new("CONTROL_ONLY")
  EXPERIMENT_ONLY = ExperimentDeltaStatus.new("EXPERIMENT_ONLY")
  MODIFIED = ExperimentDeltaStatus.new("MODIFIED")
  UNKNOWN = ExperimentDeltaStatus.new("UNKNOWN")
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

# QuotaError.Reason
class QuotaErrorReason < ::String
  TOO_MANY_ADGROUPS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_ADGROUPS_PER_CAMPAIGN")
  TOO_MANY_CAMPAIGNS_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CAMPAIGNS_PER_ACCOUNT")
  TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT")
  TOO_MANY_CRITERIA_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CRITERIA_PER_ACCOUNT")
  TOO_MANY_KEYWORDS_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_ADGROUP")
  TOO_MANY_KEYWORDS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CAMPAIGN")
  TOO_MANY_KEYWORDS_PER_CUSTOMER = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CUSTOMER")
  TOO_MANY_SITES_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_SITES_PER_ADGROUP")
  TOO_MANY_SITES_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_SITES_PER_CAMPAIGN")
  UNKNOWN = QuotaErrorReason.new("UNKNOWN")
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

# SortOrder
class SortOrder < ::String
  ASCENDING = SortOrder.new("ASCENDING")
  DESCENDING = SortOrder.new("DESCENDING")
end

# Stats.Network
class StatsNetwork < ::String
  ALL = StatsNetwork.new("ALL")
  CONTENT = StatsNetwork.new("CONTENT")
  CONTENT_KEYWORD_BID = StatsNetwork.new("CONTENT_KEYWORD_BID")
  CONTENT_PLACEMENT_BID = StatsNetwork.new("CONTENT_PLACEMENT_BID")
  GOOGLE_SEARCH = StatsNetwork.new("GOOGLE_SEARCH")
  SEARCH = StatsNetwork.new("SEARCH")
  SEARCH_NETWORK = StatsNetwork.new("SEARCH_NETWORK")
  UNKNOWN = StatsNetwork.new("UNKNOWN")
end

# StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# get
# - serviceSelector - AdwordsApi::V201101::AdGroupService::Selector
class Get #:nodoc: all
  attr_accessor :serviceSelector

  def initialize(serviceSelector = nil)
    @serviceSelector = serviceSelector
  end
end

# getResponse
# - rval - AdwordsApi::V201101::AdGroupService::AdGroupPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201101::AdGroupService::AdGroupOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201101::AdGroupService::AdGroupReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
