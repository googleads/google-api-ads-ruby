require 'xsd/qname'

module AdwordsApi; module V201101; module TrafficEstimatorService


# Address
# - streetAddress - SOAP::SOAPString
# - streetAddress2 - SOAP::SOAPString
# - cityName - SOAP::SOAPString
# - provinceCode - SOAP::SOAPString
# - provinceName - SOAP::SOAPString
# - postalCode - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class Address
  attr_accessor :streetAddress
  attr_accessor :streetAddress2
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :provinceName
  attr_accessor :postalCode
  attr_accessor :countryCode

  def initialize(streetAddress = nil, streetAddress2 = nil, cityName = nil, provinceCode = nil, provinceName = nil, postalCode = nil, countryCode = nil)
    @streetAddress = streetAddress
    @streetAddress2 = streetAddress2
    @cityName = cityName
    @provinceCode = provinceCode
    @provinceName = provinceName
    @postalCode = postalCode
    @countryCode = countryCode
  end
end

# GeoPoint
# - latitudeInMicroDegrees - SOAP::SOAPInt
# - longitudeInMicroDegrees - SOAP::SOAPInt
class GeoPoint
  attr_accessor :latitudeInMicroDegrees
  attr_accessor :longitudeInMicroDegrees

  def initialize(latitudeInMicroDegrees = nil, longitudeInMicroDegrees = nil)
    @latitudeInMicroDegrees = latitudeInMicroDegrees
    @longitudeInMicroDegrees = longitudeInMicroDegrees
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

# ProductCondition
# - argument - SOAP::SOAPString
# - operand - AdwordsApi::V201101::TrafficEstimatorService::ProductConditionOperand
class ProductCondition
  attr_accessor :argument
  attr_accessor :operand

  def initialize(argument = nil, operand = nil)
    @argument = argument
    @operand = operand
  end
end

# Target
# abstract
# - target_Type - SOAP::SOAPString
class Target
  attr_accessor :target_Type

  def initialize(target_Type = nil)
    @target_Type = target_Type
  end
end

# AdScheduleTarget
# - target_Type - SOAP::SOAPString
# - dayOfWeek - AdwordsApi::V201101::TrafficEstimatorService::DayOfWeek
# - startHour - SOAP::SOAPInt
# - startMinute - AdwordsApi::V201101::TrafficEstimatorService::MinuteOfHour
# - endHour - SOAP::SOAPInt
# - endMinute - AdwordsApi::V201101::TrafficEstimatorService::MinuteOfHour
# - bidMultiplier - SOAP::SOAPDouble
class AdScheduleTarget < Target
  attr_accessor :target_Type
  attr_accessor :dayOfWeek
  attr_accessor :startHour
  attr_accessor :startMinute
  attr_accessor :endHour
  attr_accessor :endMinute
  attr_accessor :bidMultiplier

  def initialize(target_Type = nil, dayOfWeek = nil, startHour = nil, startMinute = nil, endHour = nil, endMinute = nil, bidMultiplier = nil)
    @target_Type = target_Type
    @dayOfWeek = dayOfWeek
    @startHour = startHour
    @startMinute = startMinute
    @endHour = endHour
    @endMinute = endMinute
    @bidMultiplier = bidMultiplier
  end
end

# LanguageTarget
# - target_Type - SOAP::SOAPString
# - languageCode - SOAP::SOAPString
class LanguageTarget < Target
  attr_accessor :target_Type
  attr_accessor :languageCode

  def initialize(target_Type = nil, languageCode = nil)
    @target_Type = target_Type
    @languageCode = languageCode
  end
end

# MobileTarget
# abstract
# - target_Type - SOAP::SOAPString
class MobileTarget < Target
  attr_accessor :target_Type

  def initialize(target_Type = nil)
    @target_Type = target_Type
  end
end

# MobileCarrierTarget
# - target_Type - SOAP::SOAPString
# - carrierName - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class MobileCarrierTarget < MobileTarget
  attr_accessor :target_Type
  attr_accessor :carrierName
  attr_accessor :countryCode

  def initialize(target_Type = nil, carrierName = nil, countryCode = nil)
    @target_Type = target_Type
    @carrierName = carrierName
    @countryCode = countryCode
  end
end

# MobilePlatformTarget
# - target_Type - SOAP::SOAPString
# - platformName - SOAP::SOAPString
class MobilePlatformTarget < MobileTarget
  attr_accessor :target_Type
  attr_accessor :platformName

  def initialize(target_Type = nil, platformName = nil)
    @target_Type = target_Type
    @platformName = platformName
  end
end

# PlatformTarget
# - target_Type - SOAP::SOAPString
# - platformType - AdwordsApi::V201101::TrafficEstimatorService::PlatformType
class PlatformTarget < Target
  attr_accessor :target_Type
  attr_accessor :platformType

  def initialize(target_Type = nil, platformType = nil)
    @target_Type = target_Type
    @platformType = platformType
  end
end

# DemographicTarget
# abstract
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
class DemographicTarget < Target
  attr_accessor :target_Type
  attr_accessor :bidModifier

  def initialize(target_Type = nil, bidModifier = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
  end
end

# AgeTarget
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
# - age - AdwordsApi::V201101::TrafficEstimatorService::AgeTargetAge
class AgeTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :age

  def initialize(target_Type = nil, bidModifier = nil, age = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @age = age
  end
end

# GenderTarget
# - target_Type - SOAP::SOAPString
# - bidModifier - SOAP::SOAPInt
# - gender - AdwordsApi::V201101::TrafficEstimatorService::GenderTargetGender
class GenderTarget < DemographicTarget
  attr_accessor :target_Type
  attr_accessor :bidModifier
  attr_accessor :gender

  def initialize(target_Type = nil, bidModifier = nil, gender = nil)
    @target_Type = target_Type
    @bidModifier = bidModifier
    @gender = gender
  end
end

# GeoTarget
# abstract
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
class GeoTarget < Target
  attr_accessor :target_Type
  attr_accessor :excluded

  def initialize(target_Type = nil, excluded = nil)
    @target_Type = target_Type
    @excluded = excluded
  end
end

# CityTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - cityName - SOAP::SOAPString
# - provinceCode - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class CityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :cityName
  attr_accessor :provinceCode
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, cityName = nil, provinceCode = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @cityName = cityName
    @provinceCode = provinceCode
    @countryCode = countryCode
  end
end

# CountryTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - countryCode - SOAP::SOAPString
class CountryTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :countryCode

  def initialize(target_Type = nil, excluded = nil, countryCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @countryCode = countryCode
  end
end

# MetroTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - metroCode - SOAP::SOAPString
class MetroTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :metroCode

  def initialize(target_Type = nil, excluded = nil, metroCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @metroCode = metroCode
  end
end

# PolygonTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - vertices - AdwordsApi::V201101::TrafficEstimatorService::GeoPoint
class PolygonTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :vertices

  def initialize(target_Type = nil, excluded = nil, vertices = [])
    @target_Type = target_Type
    @excluded = excluded
    @vertices = vertices
  end
end

# ProvinceTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - provinceCode - SOAP::SOAPString
class ProvinceTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :provinceCode

  def initialize(target_Type = nil, excluded = nil, provinceCode = nil)
    @target_Type = target_Type
    @excluded = excluded
    @provinceCode = provinceCode
  end
end

# ProximityTarget
# - target_Type - SOAP::SOAPString
# - excluded - SOAP::SOAPBoolean
# - geoPoint - AdwordsApi::V201101::TrafficEstimatorService::GeoPoint
# - radiusDistanceUnits - AdwordsApi::V201101::TrafficEstimatorService::ProximityTargetDistanceUnits
# - radiusInUnits - SOAP::SOAPDouble
# - address - AdwordsApi::V201101::TrafficEstimatorService::Address
# - allowServiceOfAddress - SOAP::SOAPBoolean
class ProximityTarget < GeoTarget
  attr_accessor :target_Type
  attr_accessor :excluded
  attr_accessor :geoPoint
  attr_accessor :radiusDistanceUnits
  attr_accessor :radiusInUnits
  attr_accessor :address
  attr_accessor :allowServiceOfAddress

  def initialize(target_Type = nil, excluded = nil, geoPoint = nil, radiusDistanceUnits = nil, radiusInUnits = nil, address = nil, allowServiceOfAddress = nil)
    @target_Type = target_Type
    @excluded = excluded
    @geoPoint = geoPoint
    @radiusDistanceUnits = radiusDistanceUnits
    @radiusInUnits = radiusInUnits
    @address = address
    @allowServiceOfAddress = allowServiceOfAddress
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::ClientTermsErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::DateErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::DistinctErrorReason
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

# EntityAccessDenied
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::EntityAccessDeniedReason
class EntityAccessDenied < ApiError
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::EntityNotFoundReason
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

# IdError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::IdErrorReason
class IdError < ApiError
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::NullErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::OperationAccessDeniedReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::OperatorErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RangeErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::ReadOnlyErrorReason
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

# RegionCodeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RegionCodeErrorReason
class RegionCodeError < ApiError
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RejectedErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RequestErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::RequiredErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::SizeLimitErrorReason
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::StringLengthErrorReason
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

# TargetError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::TargetErrorReason
class TargetError < ApiError
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
# - reason - AdwordsApi::V201101::TrafficEstimatorService::DatabaseErrorReason
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

# CollectionSizeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::CollectionSizeErrorReason
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

# CurrencyCodeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::CurrencyCodeErrorReason
class CurrencyCodeError < ApiError
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

# MatchesRegexError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::MatchesRegexErrorReason
class MatchesRegexError < ApiError
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

# TrafficEstimatorError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::TrafficEstimatorService::TrafficEstimatorErrorReason
class TrafficEstimatorError < ApiError
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
# - errors - AdwordsApi::V201101::TrafficEstimatorService::ApiError
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
# - matchType - AdwordsApi::V201101::TrafficEstimatorService::KeywordMatchType
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
# - userListMembershipStatus - AdwordsApi::V201101::TrafficEstimatorService::CriterionUserListMembershipStatus
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

# Product
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - conditions - AdwordsApi::V201101::TrafficEstimatorService::ProductCondition
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

# Estimate
# - estimate_Type - SOAP::SOAPString
class Estimate
  attr_accessor :estimate_Type

  def initialize(estimate_Type = nil)
    @estimate_Type = estimate_Type
  end
end

# AdGroupEstimate
# - estimate_Type - SOAP::SOAPString
# - adGroupId - SOAP::SOAPLong
# - keywordEstimates - AdwordsApi::V201101::TrafficEstimatorService::KeywordEstimate
class AdGroupEstimate < Estimate
  attr_accessor :estimate_Type
  attr_accessor :adGroupId
  attr_accessor :keywordEstimates

  def initialize(estimate_Type = nil, adGroupId = nil, keywordEstimates = [])
    @estimate_Type = estimate_Type
    @adGroupId = adGroupId
    @keywordEstimates = keywordEstimates
  end
end

# CampaignEstimate
# - estimate_Type - SOAP::SOAPString
# - campaignId - SOAP::SOAPLong
# - adGroupEstimates - AdwordsApi::V201101::TrafficEstimatorService::AdGroupEstimate
class CampaignEstimate < Estimate
  attr_accessor :estimate_Type
  attr_accessor :campaignId
  attr_accessor :adGroupEstimates

  def initialize(estimate_Type = nil, campaignId = nil, adGroupEstimates = [])
    @estimate_Type = estimate_Type
    @campaignId = campaignId
    @adGroupEstimates = adGroupEstimates
  end
end

# KeywordEstimate
# - estimate_Type - SOAP::SOAPString
# - criterionId - SOAP::SOAPLong
# - min - AdwordsApi::V201101::TrafficEstimatorService::StatsEstimate
# - max - AdwordsApi::V201101::TrafficEstimatorService::StatsEstimate
class KeywordEstimate < Estimate
  attr_accessor :estimate_Type
  attr_accessor :criterionId
  attr_accessor :min
  attr_accessor :max

  def initialize(estimate_Type = nil, criterionId = nil, min = nil, max = nil)
    @estimate_Type = estimate_Type
    @criterionId = criterionId
    @min = min
    @max = max
  end
end

# EstimateRequest
# abstract
# - estimateRequest_Type - SOAP::SOAPString
class EstimateRequest
  attr_accessor :estimateRequest_Type

  def initialize(estimateRequest_Type = nil)
    @estimateRequest_Type = estimateRequest_Type
  end
end

# AdGroupEstimateRequest
# - estimateRequest_Type - SOAP::SOAPString
# - adGroupId - SOAP::SOAPLong
# - keywordEstimateRequests - AdwordsApi::V201101::TrafficEstimatorService::KeywordEstimateRequest
# - maxCpc - AdwordsApi::V201101::TrafficEstimatorService::Money
class AdGroupEstimateRequest < EstimateRequest
  attr_accessor :estimateRequest_Type
  attr_accessor :adGroupId
  attr_accessor :keywordEstimateRequests
  attr_accessor :maxCpc

  def initialize(estimateRequest_Type = nil, adGroupId = nil, keywordEstimateRequests = [], maxCpc = nil)
    @estimateRequest_Type = estimateRequest_Type
    @adGroupId = adGroupId
    @keywordEstimateRequests = keywordEstimateRequests
    @maxCpc = maxCpc
  end
end

# CampaignEstimateRequest
# - estimateRequest_Type - SOAP::SOAPString
# - campaignId - SOAP::SOAPLong
# - adGroupEstimateRequests - AdwordsApi::V201101::TrafficEstimatorService::AdGroupEstimateRequest
# - targets - AdwordsApi::V201101::TrafficEstimatorService::Target
class CampaignEstimateRequest < EstimateRequest
  attr_accessor :estimateRequest_Type
  attr_accessor :campaignId
  attr_accessor :adGroupEstimateRequests
  attr_accessor :targets

  def initialize(estimateRequest_Type = nil, campaignId = nil, adGroupEstimateRequests = [], targets = [])
    @estimateRequest_Type = estimateRequest_Type
    @campaignId = campaignId
    @adGroupEstimateRequests = adGroupEstimateRequests
    @targets = targets
  end
end

# KeywordEstimateRequest
# - estimateRequest_Type - SOAP::SOAPString
# - keyword - AdwordsApi::V201101::TrafficEstimatorService::Keyword
# - maxCpc - AdwordsApi::V201101::TrafficEstimatorService::Money
class KeywordEstimateRequest < EstimateRequest
  attr_accessor :estimateRequest_Type
  attr_accessor :keyword
  attr_accessor :maxCpc

  def initialize(estimateRequest_Type = nil, keyword = nil, maxCpc = nil)
    @estimateRequest_Type = estimateRequest_Type
    @keyword = keyword
    @maxCpc = maxCpc
  end
end

# StatsEstimate
# - averageCpc - AdwordsApi::V201101::TrafficEstimatorService::Money
# - averagePosition - SOAP::SOAPDouble
# - clicksPerDay - SOAP::SOAPFloat
# - totalCost - AdwordsApi::V201101::TrafficEstimatorService::Money
class StatsEstimate
  attr_accessor :averageCpc
  attr_accessor :averagePosition
  attr_accessor :clicksPerDay
  attr_accessor :totalCost

  def initialize(averageCpc = nil, averagePosition = nil, clicksPerDay = nil, totalCost = nil)
    @averageCpc = averageCpc
    @averagePosition = averagePosition
    @clicksPerDay = clicksPerDay
    @totalCost = totalCost
  end
end

# TrafficEstimatorResult
# - campaignEstimates - AdwordsApi::V201101::TrafficEstimatorService::CampaignEstimate
class TrafficEstimatorResult
  attr_accessor :campaignEstimates

  def initialize(campaignEstimates = [])
    @campaignEstimates = campaignEstimates
  end
end

# TrafficEstimatorSelector
# - campaignEstimateRequests - AdwordsApi::V201101::TrafficEstimatorService::CampaignEstimateRequest
class TrafficEstimatorSelector
  attr_accessor :campaignEstimateRequests

  def initialize(campaignEstimateRequests = [])
    @campaignEstimateRequests = campaignEstimateRequests
  end
end

# AgeTarget.Age
class AgeTargetAge < ::String
  AGE_0_17 = AgeTargetAge.new("AGE_0_17")
  AGE_18_24 = AgeTargetAge.new("AGE_18_24")
  AGE_25_34 = AgeTargetAge.new("AGE_25_34")
  AGE_35_44 = AgeTargetAge.new("AGE_35_44")
  AGE_45_54 = AgeTargetAge.new("AGE_45_54")
  AGE_55_64 = AgeTargetAge.new("AGE_55_64")
  AGE_65_PLUS = AgeTargetAge.new("AGE_65_PLUS")
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

# DayOfWeek
class DayOfWeek < ::String
  FRIDAY = DayOfWeek.new("FRIDAY")
  MONDAY = DayOfWeek.new("MONDAY")
  SATURDAY = DayOfWeek.new("SATURDAY")
  SUNDAY = DayOfWeek.new("SUNDAY")
  THURSDAY = DayOfWeek.new("THURSDAY")
  TUESDAY = DayOfWeek.new("TUESDAY")
  WEDNESDAY = DayOfWeek.new("WEDNESDAY")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
  DUPLICATE_TYPE = DistinctErrorReason.new("DUPLICATE_TYPE")
end

# EntityAccessDenied.Reason
class EntityAccessDeniedReason < ::String
  READ_ACCESS_DENIED = EntityAccessDeniedReason.new("READ_ACCESS_DENIED")
  WRITE_ACCESS_DENIED = EntityAccessDeniedReason.new("WRITE_ACCESS_DENIED")
end

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# GenderTarget.Gender
class GenderTargetGender < ::String
  FEMALE = GenderTargetGender.new("FEMALE")
  MALE = GenderTargetGender.new("MALE")
end

# IdError.Reason
class IdErrorReason < ::String
  NOT_FOUND = IdErrorReason.new("NOT_FOUND")
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

# MinuteOfHour
class MinuteOfHour < ::String
  FIFTEEN = MinuteOfHour.new("FIFTEEN")
  FORTY_FIVE = MinuteOfHour.new("FORTY_FIVE")
  THIRTY = MinuteOfHour.new("THIRTY")
  ZERO = MinuteOfHour.new("ZERO")
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

# OperatorError.Reason
class OperatorErrorReason < ::String
  OPERATOR_NOT_SUPPORTED = OperatorErrorReason.new("OPERATOR_NOT_SUPPORTED")
end

# PlatformType
class PlatformType < ::String
  DESKTOP = PlatformType.new("DESKTOP")
  HIGH_END_MOBILE = PlatformType.new("HIGH_END_MOBILE")
  UNKNOWN = PlatformType.new("UNKNOWN")
end

# ProximityTarget.DistanceUnits
class ProximityTargetDistanceUnits < ::String
  KILOMETERS = ProximityTargetDistanceUnits.new("KILOMETERS")
  MILES = ProximityTargetDistanceUnits.new("MILES")
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

# RegionCodeError.Reason
class RegionCodeErrorReason < ::String
  INVALID_REGION_CODE = RegionCodeErrorReason.new("INVALID_REGION_CODE")
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

# TargetError.Reason
class TargetErrorReason < ::String
  AD_SCHEDULE_ADVANCED_INCOMPATIBLE_WITH_CONVERSION_OPTIMIZER = TargetErrorReason.new("AD_SCHEDULE_ADVANCED_INCOMPATIBLE_WITH_CONVERSION_OPTIMIZER")
  AD_SCHEDULE_BID_MULTIPLIER_MALFORMED = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_MALFORMED")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_BIG = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_BIG")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_MANY_FRACTION_DIGITS = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_MANY_FRACTION_DIGITS")
  AD_SCHEDULE_BID_MULTIPLIER_TOO_SMALL = TargetErrorReason.new("AD_SCHEDULE_BID_MULTIPLIER_TOO_SMALL")
  AD_SCHEDULE_EXCEEDED_INTERVALS_PER_DAY_LIMIT = TargetErrorReason.new("AD_SCHEDULE_EXCEEDED_INTERVALS_PER_DAY_LIMIT")
  AD_SCHEDULE_EXCEEDS_PAST_END_OF_WEEK = TargetErrorReason.new("AD_SCHEDULE_EXCEEDS_PAST_END_OF_WEEK")
  AD_SCHEDULE_INCOMPATIBILITY = TargetErrorReason.new("AD_SCHEDULE_INCOMPATIBILITY")
  AD_SCHEDULE_INCOMPATIBLE_WITH_BUDGET_OPTIMIZER = TargetErrorReason.new("AD_SCHEDULE_INCOMPATIBLE_WITH_BUDGET_OPTIMIZER")
  AD_SCHEDULE_INTERVAL_CANNOT_SPAN_MULTIPLE_DAYS = TargetErrorReason.new("AD_SCHEDULE_INTERVAL_CANNOT_SPAN_MULTIPLE_DAYS")
  AD_SCHEDULE_INVALID_DAY_OF_THE_WEEK = TargetErrorReason.new("AD_SCHEDULE_INVALID_DAY_OF_THE_WEEK")
  AD_SCHEDULE_INVALID_TIME_INTERVAL = TargetErrorReason.new("AD_SCHEDULE_INVALID_TIME_INTERVAL")
  AD_SCHEDULE_NOT_MULTIPLE_OF_15_MINUTES = TargetErrorReason.new("AD_SCHEDULE_NOT_MULTIPLE_OF_15_MINUTES")
  AD_SCHEDULE_NO_INTERVALS_WHILE_ENABLED = TargetErrorReason.new("AD_SCHEDULE_NO_INTERVALS_WHILE_ENABLED")
  AD_SCHEDULE_TIME_INTERVALS_OVERLAP = TargetErrorReason.new("AD_SCHEDULE_TIME_INTERVALS_OVERLAP")
  CANNOT_EXCLUDE_CITY = TargetErrorReason.new("CANNOT_EXCLUDE_CITY")
  CANNOT_EXCLUDE_IF_NOT_TARGETED = TargetErrorReason.new("CANNOT_EXCLUDE_IF_NOT_TARGETED")
  CANNOT_EXCLUDE_METRO = TargetErrorReason.new("CANNOT_EXCLUDE_METRO")
  CANNOT_EXCLUDE_PROVINCE = TargetErrorReason.new("CANNOT_EXCLUDE_PROVINCE")
  CANNOT_OPT_OUT_GOOGLE_SEARCH_WHILE_BID_TO_POSITION_ENABLE = TargetErrorReason.new("CANNOT_OPT_OUT_GOOGLE_SEARCH_WHILE_BID_TO_POSITION_ENABLE")
  CANNOT_TARGET_AGE_WITHOUT_GENDER = TargetErrorReason.new("CANNOT_TARGET_AGE_WITHOUT_GENDER")
  CANNOT_TARGET_CITY = TargetErrorReason.new("CANNOT_TARGET_CITY")
  CANNOT_TARGET_CONTENT_CONTEXTUAL_WITHOUT_CONTENT_NETWORK = TargetErrorReason.new("CANNOT_TARGET_CONTENT_CONTEXTUAL_WITHOUT_CONTENT_NETWORK")
  CANNOT_TARGET_COUNTRY = TargetErrorReason.new("CANNOT_TARGET_COUNTRY")
  CANNOT_TARGET_COVERAGE = TargetErrorReason.new("CANNOT_TARGET_COVERAGE")
  CANNOT_TARGET_GENDER_WITHOUT_AGE = TargetErrorReason.new("CANNOT_TARGET_GENDER_WITHOUT_AGE")
  CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN = TargetErrorReason.new("CANNOT_TARGET_GOOGLE_SEARCH_FOR_CPM_CAMPAIGN")
  CANNOT_TARGET_LANGUAGE = TargetErrorReason.new("CANNOT_TARGET_LANGUAGE")
  CANNOT_TARGET_METRO = TargetErrorReason.new("CANNOT_TARGET_METRO")
  CANNOT_TARGET_MOBILE_CARRIER = TargetErrorReason.new("CANNOT_TARGET_MOBILE_CARRIER")
  CANNOT_TARGET_PROVINCE = TargetErrorReason.new("CANNOT_TARGET_PROVINCE")
  CANNOT_TARGET_SEARCH_SYNDICATION_WITHOUT_GOOGLE_SEARCH = TargetErrorReason.new("CANNOT_TARGET_SEARCH_SYNDICATION_WITHOUT_GOOGLE_SEARCH")
  CANNOT_TARGET_SYNDICATABLE_TYPES = TargetErrorReason.new("CANNOT_TARGET_SYNDICATABLE_TYPES")
  CANNOT_TARGET_THE_SAME_TARGET_LIST_TYPE_MULTIPLE_TIMES = TargetErrorReason.new("CANNOT_TARGET_THE_SAME_TARGET_LIST_TYPE_MULTIPLE_TIMES")
  DEMOGRAPHIC_BID_MODIFIER_SHOULD_BE_IN_BETWEEN_0_AND_500 = TargetErrorReason.new("DEMOGRAPHIC_BID_MODIFIER_SHOULD_BE_IN_BETWEEN_0_AND_500")
  INVALID_CITYNAME_LENGTH = TargetErrorReason.new("INVALID_CITYNAME_LENGTH")
  INVALID_CITY_CODE = TargetErrorReason.new("INVALID_CITY_CODE")
  INVALID_EXCLUDED_POLYGON_TARGET = TargetErrorReason.new("INVALID_EXCLUDED_POLYGON_TARGET")
  INVALID_EXCLUDED_PROXIMITY_TARGET = TargetErrorReason.new("INVALID_EXCLUDED_PROXIMITY_TARGET")
  INVALID_LANGUAGE_CODE = TargetErrorReason.new("INVALID_LANGUAGE_CODE")
  INVALID_LATITUDE = TargetErrorReason.new("INVALID_LATITUDE")
  INVALID_LONGITUDE = TargetErrorReason.new("INVALID_LONGITUDE")
  INVALID_METRO_CODE = TargetErrorReason.new("INVALID_METRO_CODE")
  INVALID_MOBILE_CARRIER = TargetErrorReason.new("INVALID_MOBILE_CARRIER")
  INVALID_MOBILE_PLATFORM = TargetErrorReason.new("INVALID_MOBILE_PLATFORM")
  INVALID_POSTALCODE_LENGTH = TargetErrorReason.new("INVALID_POSTALCODE_LENGTH")
  INVALID_PROVINCE_CODE = TargetErrorReason.new("INVALID_PROVINCE_CODE")
  INVALID_PROXIMITY_RADIUS = TargetErrorReason.new("INVALID_PROXIMITY_RADIUS")
  INVALID_REGIONCODE_LENGTH = TargetErrorReason.new("INVALID_REGIONCODE_LENGTH")
  INVALID_REGIONNAME_LENGTH = TargetErrorReason.new("INVALID_REGIONNAME_LENGTH")
  INVALID_STREETADDRESS_LENGTH = TargetErrorReason.new("INVALID_STREETADDRESS_LENGTH")
  MULTIPLE_OCCURRENCES_OF_SAME_TARGET = TargetErrorReason.new("MULTIPLE_OCCURRENCES_OF_SAME_TARGET")
  POLYGON_DUPLICATE_VERTICES = TargetErrorReason.new("POLYGON_DUPLICATE_VERTICES")
  POLYGON_EDGES_INTERSECT = TargetErrorReason.new("POLYGON_EDGES_INTERSECT")
  POLYGON_TOO_FEW_VERTICES = TargetErrorReason.new("POLYGON_TOO_FEW_VERTICES")
  POLYGON_TOO_LARGE = TargetErrorReason.new("POLYGON_TOO_LARGE")
  POLYGON_TOO_MANY_VERTICES = TargetErrorReason.new("POLYGON_TOO_MANY_VERTICES")
  TARGETING_CROSS_COUNTRY_REGIONAL = TargetErrorReason.new("TARGETING_CROSS_COUNTRY_REGIONAL")
  TARGETING_EXCLUSION_NOT_SUPPORTED = TargetErrorReason.new("TARGETING_EXCLUSION_NOT_SUPPORTED")
  TARGETING_INCOMPATIBLE_LOCATION_TYPES = TargetErrorReason.new("TARGETING_INCOMPATIBLE_LOCATION_TYPES")
  TARGETING_NOT_SUPPORTED = TargetErrorReason.new("TARGETING_NOT_SUPPORTED")
  TARGETING_TOO_MANY_REGIONS = TargetErrorReason.new("TARGETING_TOO_MANY_REGIONS")
  TARGETING_VALIDATION_FAILED = TargetErrorReason.new("TARGETING_VALIDATION_FAILED")
  TARGET_ERROR = TargetErrorReason.new("TARGET_ERROR")
  TARGET_IS_ENCLOSED_BY_ANOTHER_TARGET = TargetErrorReason.new("TARGET_IS_ENCLOSED_BY_ANOTHER_TARGET")
  TARGET_IS_EXCLUDED_BY_ANOTHER_TARGET = TargetErrorReason.new("TARGET_IS_EXCLUDED_BY_ANOTHER_TARGET")
  TOO_MANY_EXCLUDED_LOCATIONS = TargetErrorReason.new("TOO_MANY_EXCLUDED_LOCATIONS")
  TOO_MANY_TARGETED_LOCATIONS = TargetErrorReason.new("TOO_MANY_TARGETED_LOCATIONS")
  WARNING_MAY_NOW_REQUIRE_CHINESE_APPROVAL = TargetErrorReason.new("WARNING_MAY_NOW_REQUIRE_CHINESE_APPROVAL")
  WARNING_NOW_REQUIRES_CHINESE_APPROVAL = TargetErrorReason.new("WARNING_NOW_REQUIRES_CHINESE_APPROVAL")
  WARNING_NOW_TARGETS_CHINA = TargetErrorReason.new("WARNING_NOW_TARGETS_CHINA")
  WARNING_NOW_TARGETS_CHINESE = TargetErrorReason.new("WARNING_NOW_TARGETS_CHINESE")
end

# CriterionUserList.MembershipStatus
class CriterionUserListMembershipStatus < ::String
  CLOSED = CriterionUserListMembershipStatus.new("CLOSED")
  OPEN = CriterionUserListMembershipStatus.new("OPEN")
end

# CollectionSizeError.Reason
class CollectionSizeErrorReason < ::String
  TOO_FEW = CollectionSizeErrorReason.new("TOO_FEW")
  TOO_MANY = CollectionSizeErrorReason.new("TOO_MANY")
end

# CurrencyCodeError.Reason
class CurrencyCodeErrorReason < ::String
  UNSUPPORTED_CURRENCY_CODE = CurrencyCodeErrorReason.new("UNSUPPORTED_CURRENCY_CODE")
end

# MatchesRegexError.Reason
class MatchesRegexErrorReason < ::String
  DOES_NOT_MATCH = MatchesRegexErrorReason.new("DOES_NOT_MATCH")
  UNKNOWN = MatchesRegexErrorReason.new("UNKNOWN")
end

# TrafficEstimatorError.Reason
class TrafficEstimatorErrorReason < ::String
  INVALID_INPUT = TrafficEstimatorErrorReason.new("INVALID_INPUT")
  NO_AD_GROUP_FOR_KEYWORD_ESTIMATE_REQUEST = TrafficEstimatorErrorReason.new("NO_AD_GROUP_FOR_KEYWORD_ESTIMATE_REQUEST")
  NO_CAMPAIGN_FOR_AD_GROUP_ESTIMATE_REQUEST = TrafficEstimatorErrorReason.new("NO_CAMPAIGN_FOR_AD_GROUP_ESTIMATE_REQUEST")
  NO_MAX_CPC_FOR_KEYWORD_ESTIMATE_REQUEST = TrafficEstimatorErrorReason.new("NO_MAX_CPC_FOR_KEYWORD_ESTIMATE_REQUEST")
  SERVICE_UNAVAILABLE = TrafficEstimatorErrorReason.new("SERVICE_UNAVAILABLE")
  TOO_MANY_ADGROUP_ESTIMATE_REQUESTS = TrafficEstimatorErrorReason.new("TOO_MANY_ADGROUP_ESTIMATE_REQUESTS")
  TOO_MANY_CAMPAIGN_ESTIMATE_REQUESTS = TrafficEstimatorErrorReason.new("TOO_MANY_CAMPAIGN_ESTIMATE_REQUESTS")
  TOO_MANY_KEYWORD_ESTIMATE_REQUESTS = TrafficEstimatorErrorReason.new("TOO_MANY_KEYWORD_ESTIMATE_REQUESTS")
  TOO_MANY_TARGETS = TrafficEstimatorErrorReason.new("TOO_MANY_TARGETS")
end

# get
# - selector - AdwordsApi::V201101::TrafficEstimatorService::TrafficEstimatorSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201101::TrafficEstimatorService::TrafficEstimatorResult
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
