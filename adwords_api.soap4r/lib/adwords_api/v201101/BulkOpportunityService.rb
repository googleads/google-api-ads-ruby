require 'xsd/qname'

module AdwordsApi; module V201101; module BulkOpportunityService


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
# - reason - AdwordsApi::V201101::BulkOpportunityService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::ClientTermsErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::DatabaseErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::NullErrorReason
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

# QuotaCheckError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::BulkOpportunityService::QuotaCheckErrorReason
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

# RateExceededError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::BulkOpportunityService::RateExceededErrorReason
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

# RequestError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::BulkOpportunityService::RequestErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::RequiredErrorReason
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
# - reason - AdwordsApi::V201101::BulkOpportunityService::SizeLimitErrorReason
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

# BulkOpportunityServiceError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityServiceErrorReason
class BulkOpportunityServiceError < ApiError
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

# OpportunityError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::BulkOpportunityService::OpportunityErrorReason
class OpportunityError < ApiError
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
# - errors - AdwordsApi::V201101::BulkOpportunityService::ApiError
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

# BidLandscape.LandscapePoint
# - bid - AdwordsApi::V201101::BulkOpportunityService::Money
# - clicks - SOAP::SOAPLong
# - cost - AdwordsApi::V201101::BulkOpportunityService::Money
# - marginalCpc - AdwordsApi::V201101::BulkOpportunityService::Money
# - impressions - SOAP::SOAPLong
class BidLandscapeLandscapePoint
  attr_accessor :bid
  attr_accessor :clicks
  attr_accessor :cost
  attr_accessor :marginalCpc
  attr_accessor :impressions

  def initialize(bid = nil, clicks = nil, cost = nil, marginalCpc = nil, impressions = nil)
    @bid = bid
    @clicks = clicks
    @cost = cost
    @marginalCpc = marginalCpc
    @impressions = impressions
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

# Criterion
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
class Criterion
  attr_accessor :id
  attr_accessor :criterion_Type

  def initialize(id = nil, criterion_Type = nil)
    @id = id
    @criterion_Type = criterion_Type
  end
end

# Keyword
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - text - SOAP::SOAPString
# - matchType - AdwordsApi::V201101::BulkOpportunityService::KeywordMatchType
class Keyword < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :text
  attr_accessor :matchType

  def initialize(id = nil, criterion_Type = nil, text = nil, matchType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @text = text
    @matchType = matchType
  end
end

# Placement
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - url - SOAP::SOAPString
class Placement < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :url

  def initialize(id = nil, criterion_Type = nil, url = nil)
    @id = id
    @criterion_Type = criterion_Type
    @url = url
  end
end

# Product
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - conditions - AdwordsApi::V201101::BulkOpportunityService::ProductCondition
# - text - SOAP::SOAPString
class Product < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :conditions
  attr_accessor :text

  def initialize(id = nil, criterion_Type = nil, conditions = [], text = nil)
    @id = id
    @criterion_Type = criterion_Type
    @conditions = conditions
    @text = text
  end
end

# CriterionUserInterest
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - userInterestId - SOAP::SOAPLong
# - userInterestName - SOAP::SOAPString
class CriterionUserInterest < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :userInterestId
  attr_accessor :userInterestName

  def initialize(id = nil, criterion_Type = nil, userInterestId = nil, userInterestName = nil)
    @id = id
    @criterion_Type = criterion_Type
    @userInterestId = userInterestId
    @userInterestName = userInterestName
  end
end

# CriterionUserList
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - userListId - SOAP::SOAPLong
# - userListName - SOAP::SOAPString
# - userListMembershipStatus - AdwordsApi::V201101::BulkOpportunityService::CriterionUserListMembershipStatus
class CriterionUserList < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :userListId
  attr_accessor :userListName
  attr_accessor :userListMembershipStatus

  def initialize(id = nil, criterion_Type = nil, userListId = nil, userListName = nil, userListMembershipStatus = nil)
    @id = id
    @criterion_Type = criterion_Type
    @userListId = userListId
    @userListName = userListName
    @userListMembershipStatus = userListMembershipStatus
  end
end

# Vertical
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - path - SOAP::SOAPString
class Vertical < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :path

  def initialize(id = nil, criterion_Type = nil, path = [])
    @id = id
    @criterion_Type = criterion_Type
    @path = path
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

# ProductCondition
# - argument - SOAP::SOAPString
# - operand - AdwordsApi::V201101::BulkOpportunityService::ProductConditionOperand
class ProductCondition
  attr_accessor :argument
  attr_accessor :operand

  def initialize(argument = nil, operand = nil)
    @argument = argument
    @operand = operand
  end
end

# ProductConditionOperand
# - operand - SOAP::SOAPString
class ProductConditionOperand
  attr_accessor :operand

  def initialize(operand = nil)
    @operand = operand
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

# DataEntry
# abstract
# - dataEntry_Type - SOAP::SOAPString
class DataEntry
  attr_accessor :dataEntry_Type

  def initialize(dataEntry_Type = nil)
    @dataEntry_Type = dataEntry_Type
  end
end

# BidLandscape
# abstract
# - dataEntry_Type - SOAP::SOAPString
# - campaignId - SOAP::SOAPLong
# - adGroupId - SOAP::SOAPLong
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - landscapePoints - AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint
class BidLandscape < DataEntry
  attr_accessor :dataEntry_Type
  attr_accessor :campaignId
  attr_accessor :adGroupId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :landscapePoints

  def initialize(dataEntry_Type = nil, campaignId = nil, adGroupId = nil, startDate = nil, endDate = nil, landscapePoints = [])
    @dataEntry_Type = dataEntry_Type
    @campaignId = campaignId
    @adGroupId = adGroupId
    @startDate = startDate
    @endDate = endDate
    @landscapePoints = landscapePoints
  end
end

# AdGroupBidLandscape
# - dataEntry_Type - SOAP::SOAPString
# - campaignId - SOAP::SOAPLong
# - adGroupId - SOAP::SOAPLong
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - landscapePoints - AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint
# - type - AdwordsApi::V201101::BulkOpportunityService::AdGroupBidLandscapeType
# - landscapeCurrent - SOAP::SOAPBoolean
class AdGroupBidLandscape < BidLandscape
  attr_accessor :dataEntry_Type
  attr_accessor :campaignId
  attr_accessor :adGroupId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :landscapePoints
  attr_accessor :type
  attr_accessor :landscapeCurrent

  def initialize(dataEntry_Type = nil, campaignId = nil, adGroupId = nil, startDate = nil, endDate = nil, landscapePoints = [], type = nil, landscapeCurrent = nil)
    @dataEntry_Type = dataEntry_Type
    @campaignId = campaignId
    @adGroupId = adGroupId
    @startDate = startDate
    @endDate = endDate
    @landscapePoints = landscapePoints
    @type = type
    @landscapeCurrent = landscapeCurrent
  end
end

# CriterionBidLandscape
# - dataEntry_Type - SOAP::SOAPString
# - campaignId - SOAP::SOAPLong
# - adGroupId - SOAP::SOAPLong
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - landscapePoints - AdwordsApi::V201101::BulkOpportunityService::BidLandscapeLandscapePoint
# - criterionId - SOAP::SOAPLong
class CriterionBidLandscape < BidLandscape
  attr_accessor :dataEntry_Type
  attr_accessor :campaignId
  attr_accessor :adGroupId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :landscapePoints
  attr_accessor :criterionId

  def initialize(dataEntry_Type = nil, campaignId = nil, adGroupId = nil, startDate = nil, endDate = nil, landscapePoints = [], criterionId = nil)
    @dataEntry_Type = dataEntry_Type
    @campaignId = campaignId
    @adGroupId = adGroupId
    @startDate = startDate
    @endDate = endDate
    @landscapePoints = landscapePoints
    @criterionId = criterionId
  end
end

# AdFormatSpec
# - format - AdwordsApi::V201101::BulkOpportunityService::SiteConstantsAdFormat
class AdFormatSpec
  attr_accessor :format

  def initialize(format = nil)
    @format = format
  end
end

# Attribute
# abstract
# - attribute_Type - SOAP::SOAPString
class Attribute
  attr_accessor :attribute_Type

  def initialize(attribute_Type = nil)
    @attribute_Type = attribute_Type
  end
end

# AdFormatSpecListAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::AdFormatSpec
class AdFormatSpecListAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# BidLandscapeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::BidLandscape
class BidLandscapeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# BooleanAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPBoolean
class BooleanAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# CriterionAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::Criterion
class CriterionAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# DoubleAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPDouble
class DoubleAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IdeaTypeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::IdeaType
class IdeaTypeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# InStreamAdInfoAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::InStreamAdInfo
class InStreamAdInfoAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IntegerAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPInt
class IntegerAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# IntegerSetAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPInt
class IntegerSetAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# KeywordAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::Keyword
class KeywordAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# LongAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPLong
class LongAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# LongRangeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::C_Range
class LongRangeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# MoneyAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::Money
class MoneyAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# MonthlySearchVolumeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::MonthlySearchVolume
class MonthlySearchVolumeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = [])
    @attribute_Type = attribute_Type
    @value = value
  end
end

# OpportunityIdeaTypeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType
class OpportunityIdeaTypeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# PlacementAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::Placement
class PlacementAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# PlacementTypeAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::SiteConstantsPlacementType
class PlacementTypeAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# StringAttribute
# - attribute_Type - SOAP::SOAPString
# - value - SOAP::SOAPString
class StringAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# WebpageDescriptorAttribute
# - attribute_Type - SOAP::SOAPString
# - value - AdwordsApi::V201101::BulkOpportunityService::WebpageDescriptor
class WebpageDescriptorAttribute < Attribute
  attr_accessor :attribute_Type
  attr_accessor :value

  def initialize(attribute_Type = nil, value = nil)
    @attribute_Type = attribute_Type
    @value = value
  end
end

# BulkOpportunityPage
# - entries - AdwordsApi::V201101::BulkOpportunityService::Opportunity
# - totalNumEntries - SOAP::SOAPInt
class BulkOpportunityPage
  attr_accessor :entries
  attr_accessor :totalNumEntries

  def initialize(entries = [], totalNumEntries = nil)
    @entries = entries
    @totalNumEntries = totalNumEntries
  end
end

# BulkOpportunitySelector
# - ideaTypes - AdwordsApi::V201101::BulkOpportunityService::OpportunityIdeaType
# - requestedAttributeTypes - AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType
# - paging - AdwordsApi::V201101::BulkOpportunityService::Paging
class BulkOpportunitySelector
  attr_accessor :ideaTypes
  attr_accessor :requestedAttributeTypes
  attr_accessor :paging

  def initialize(ideaTypes = [], requestedAttributeTypes = [], paging = nil)
    @ideaTypes = ideaTypes
    @requestedAttributeTypes = requestedAttributeTypes
    @paging = paging
  end
end

# InStreamAdInfo
# - maxAdDuration - SOAP::SOAPInt
# - minAdDuration - SOAP::SOAPInt
# - medianAdDuration - SOAP::SOAPInt
# - preRollPercent - SOAP::SOAPDouble
# - midRollPercent - SOAP::SOAPDouble
# - postRollPercent - SOAP::SOAPDouble
class InStreamAdInfo
  attr_accessor :maxAdDuration
  attr_accessor :minAdDuration
  attr_accessor :medianAdDuration
  attr_accessor :preRollPercent
  attr_accessor :midRollPercent
  attr_accessor :postRollPercent

  def initialize(maxAdDuration = nil, minAdDuration = nil, medianAdDuration = nil, preRollPercent = nil, midRollPercent = nil, postRollPercent = nil)
    @maxAdDuration = maxAdDuration
    @minAdDuration = minAdDuration
    @medianAdDuration = medianAdDuration
    @preRollPercent = preRollPercent
    @midRollPercent = midRollPercent
    @postRollPercent = postRollPercent
  end
end

# MonthlySearchVolume
# - year - SOAP::SOAPInt
# - month - SOAP::SOAPInt
# - count - SOAP::SOAPLong
class MonthlySearchVolume
  attr_accessor :year
  attr_accessor :month
  attr_accessor :count

  def initialize(year = nil, month = nil, count = nil)
    @year = year
    @month = month
    @count = count
  end
end

# Opportunity
# - opportunityIdeas - AdwordsApi::V201101::BulkOpportunityService::OpportunityIdea
class Opportunity
  attr_accessor :opportunityIdeas

  def initialize(opportunityIdeas = [])
    @opportunityIdeas = opportunityIdeas
  end
end

# OpportunityAttribute_AttributeMapEntry
# - key - AdwordsApi::V201101::BulkOpportunityService::OpportunityAttributeType
# - value - AdwordsApi::V201101::BulkOpportunityService::Attribute
class OpportunityAttribute_AttributeMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# OpportunityIdea
# - data - AdwordsApi::V201101::BulkOpportunityService::OpportunityAttribute_AttributeMapEntry
class OpportunityIdea
  attr_accessor :data

  def initialize(data = [])
    @data = data
  end
end

# Range
# - min - AdwordsApi::V201101::BulkOpportunityService::ComparableValue
# - max - AdwordsApi::V201101::BulkOpportunityService::ComparableValue
class C_Range
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# WebpageDescriptor
# - url - SOAP::SOAPString
# - title - SOAP::SOAPString
class WebpageDescriptor
  attr_accessor :url
  attr_accessor :title

  def initialize(url = nil, title = nil)
    @url = url
    @title = title
  end
end

# AdGroupBidLandscape.Type
class AdGroupBidLandscapeType < ::String
  DEFAULT = AdGroupBidLandscapeType.new("DEFAULT")
  UNIFORM = AdGroupBidLandscapeType.new("UNIFORM")
  UNKNOWN = AdGroupBidLandscapeType.new("UNKNOWN")
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

# KeywordMatchType
class KeywordMatchType < ::String
  BROAD = KeywordMatchType.new("BROAD")
  EXACT = KeywordMatchType.new("EXACT")
  PHRASE = KeywordMatchType.new("PHRASE")
end

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
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

# RateExceededError.Reason
class RateExceededErrorReason < ::String
  RATE_EXCEEDED = RateExceededErrorReason.new("RATE_EXCEEDED")
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

# CriterionUserList.MembershipStatus
class CriterionUserListMembershipStatus < ::String
  CLOSED = CriterionUserListMembershipStatus.new("CLOSED")
  OPEN = CriterionUserListMembershipStatus.new("OPEN")
end

# BulkOpportunityServiceError.Reason
class BulkOpportunityServiceErrorReason < ::String
  BULK_OPPORTUNITY_SERVICE_ERROR = BulkOpportunityServiceErrorReason.new("BULK_OPPORTUNITY_SERVICE_ERROR")
  INVALID_PAGING = BulkOpportunityServiceErrorReason.new("INVALID_PAGING")
  TOO_MANY_RESULTS_REQUESTED = BulkOpportunityServiceErrorReason.new("TOO_MANY_RESULTS_REQUESTED")
end

# IdeaType
class IdeaType < ::String
  KEYWORD = IdeaType.new("KEYWORD")
  PLACEMENT = IdeaType.new("PLACEMENT")
end

# OpportunityAttributeType
class OpportunityAttributeType < ::String
  ADGROUP_ID = OpportunityAttributeType.new("ADGROUP_ID")
  AVERAGE_MONTHLY_SEARCHES = OpportunityAttributeType.new("AVERAGE_MONTHLY_SEARCHES")
  BID_LANDSCAPE = OpportunityAttributeType.new("BID_LANDSCAPE")
  CAMPAIGN_ID = OpportunityAttributeType.new("CAMPAIGN_ID")
  CLICKS_CHANGE = OpportunityAttributeType.new("CLICKS_CHANGE")
  COST_CHANGE = OpportunityAttributeType.new("COST_CHANGE")
  CURRENT_BID = OpportunityAttributeType.new("CURRENT_BID")
  CURRENT_BUDGET = OpportunityAttributeType.new("CURRENT_BUDGET")
  CUSTOMER_ID = OpportunityAttributeType.new("CUSTOMER_ID")
  IDEA_TYPE = OpportunityAttributeType.new("IDEA_TYPE")
  IMPRESSIONS_CHANGE = OpportunityAttributeType.new("IMPRESSIONS_CHANGE")
  KEYWORD = OpportunityAttributeType.new("KEYWORD")
  NEW_BID = OpportunityAttributeType.new("NEW_BID")
  NEW_BUDGET = OpportunityAttributeType.new("NEW_BUDGET")
  UNKNOWN = OpportunityAttributeType.new("UNKNOWN")
end

# OpportunityError.Reason
class OpportunityErrorReason < ::String
  OPPORTUNITY_DOES_NOT_EXIST = OpportunityErrorReason.new("OPPORTUNITY_DOES_NOT_EXIST")
  RPC_ERROR = OpportunityErrorReason.new("RPC_ERROR")
end

# OpportunityIdeaType
class OpportunityIdeaType < ::String
  BID = OpportunityIdeaType.new("BID")
  BUDGET = OpportunityIdeaType.new("BUDGET")
  KEYWORD = OpportunityIdeaType.new("KEYWORD")
end

# SiteConstants.AdFormat
class SiteConstantsAdFormat < ::String
  AUDIO = SiteConstantsAdFormat.new("AUDIO")
  IMAGE = SiteConstantsAdFormat.new("IMAGE")
  INSTREAM = SiteConstantsAdFormat.new("INSTREAM")
  TEXT = SiteConstantsAdFormat.new("TEXT")
  UNKNOWN = SiteConstantsAdFormat.new("UNKNOWN")
  VIDEO = SiteConstantsAdFormat.new("VIDEO")
end

# SiteConstants.PlacementType
class SiteConstantsPlacementType < ::String
  AUDIO = SiteConstantsPlacementType.new("AUDIO")
  FEED = SiteConstantsPlacementType.new("FEED")
  GAME = SiteConstantsPlacementType.new("GAME")
  MOBILE = SiteConstantsPlacementType.new("MOBILE")
  SITE = SiteConstantsPlacementType.new("SITE")
  UNKNOWN = SiteConstantsPlacementType.new("UNKNOWN")
  VIDEO = SiteConstantsPlacementType.new("VIDEO")
end

# get
# - selector - AdwordsApi::V201101::BulkOpportunityService::BulkOpportunitySelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201101::BulkOpportunityService::BulkOpportunityPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
