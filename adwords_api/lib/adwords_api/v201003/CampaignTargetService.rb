require 'xsd/qname'

module AdwordsApi; module V201003; module CampaignTargetService


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

# CampaignTargetSelector
# - campaignIds - SOAP::SOAPLong
class CampaignTargetSelector
  attr_accessor :campaignIds

  def initialize(campaignIds = [])
    @campaignIds = campaignIds
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
# - dayOfWeek - AdwordsApi::V201003::CampaignTargetService::DayOfWeek
# - startHour - SOAP::SOAPInt
# - startMinute - AdwordsApi::V201003::CampaignTargetService::MinuteOfHour
# - endHour - SOAP::SOAPInt
# - endMinute - AdwordsApi::V201003::CampaignTargetService::MinuteOfHour
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

# NetworkTarget
# - target_Type - SOAP::SOAPString
# - networkCoverageType - AdwordsApi::V201003::CampaignTargetService::NetworkCoverageType
class NetworkTarget < Target
  attr_accessor :target_Type
  attr_accessor :networkCoverageType

  def initialize(target_Type = nil, networkCoverageType = nil)
    @target_Type = target_Type
    @networkCoverageType = networkCoverageType
  end
end

# PlatformTarget
# - target_Type - SOAP::SOAPString
# - platformType - AdwordsApi::V201003::CampaignTargetService::PlatformType
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
# - age - AdwordsApi::V201003::CampaignTargetService::AgeTargetAge
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
# - gender - AdwordsApi::V201003::CampaignTargetService::GenderTargetGender
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
# - vertices - AdwordsApi::V201003::CampaignTargetService::GeoPoint
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
# - geoPoint - AdwordsApi::V201003::CampaignTargetService::GeoPoint
# - radiusDistanceUnits - AdwordsApi::V201003::CampaignTargetService::ProximityTargetDistanceUnits
# - radiusInUnits - SOAP::SOAPDouble
# - address - AdwordsApi::V201003::CampaignTargetService::Address
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
# - reason - AdwordsApi::V201003::CampaignTargetService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::BiddingErrorReason
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

# CampaignError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::CampaignTargetService::CampaignErrorReason
class CampaignError < ApiError
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
# - reason - AdwordsApi::V201003::CampaignTargetService::ClientTermsErrorReason
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

# DistinctError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::CampaignTargetService::DistinctErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::EntityNotFoundReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::NullErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::OperationAccessDeniedReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::OperatorErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::QuotaErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::RangeErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::RateExceededErrorReason
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

# RegionCodeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::CampaignTargetService::RegionCodeErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::RejectedErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::RequestErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::RequiredErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::SizeLimitErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::StringLengthErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::TargetErrorReason
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
# - reason - AdwordsApi::V201003::CampaignTargetService::DatabaseErrorReason
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
# - errors - AdwordsApi::V201003::CampaignTargetService::ApiError
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

# TargetList
# abstract
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
class TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type

  def initialize(campaignId = nil, targetList_Type = nil)
    @campaignId = campaignId
    @targetList_Type = targetList_Type
  end
end

# AdScheduleTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::AdScheduleTarget
class AdScheduleTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# DemographicTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::DemographicTarget
class DemographicTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# GeoTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::GeoTarget
class GeoTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# LanguageTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::LanguageTarget
class LanguageTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# MobileTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::MobileTarget
class MobileTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# NetworkTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::NetworkTarget
class NetworkTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
  end
end

# PlatformTargetList
# - campaignId - SOAP::SOAPLong
# - targetList_Type - SOAP::SOAPString
# - targets - AdwordsApi::V201003::CampaignTargetService::PlatformTarget
class PlatformTargetList < TargetList
  attr_accessor :campaignId
  attr_accessor :targetList_Type
  attr_accessor :targets

  def initialize(campaignId = nil, targetList_Type = nil, targets = [])
    @campaignId = campaignId
    @targetList_Type = targetList_Type
    @targets = targets
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

# CampaignTargetReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdwordsApi::V201003::CampaignTargetService::TargetList
class CampaignTargetReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201003::CampaignTargetService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# CampaignTargetOperation
# - operator - AdwordsApi::V201003::CampaignTargetService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::CampaignTargetService::TargetList
class CampaignTargetOperation < Operation
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

# CampaignTargetPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdwordsApi::V201003::CampaignTargetService::TargetList
class CampaignTargetPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
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

# CampaignError.Reason
class CampaignErrorReason < ::String
  AFTER_MAXIMUM_ALLOWABLE_DATE = CampaignErrorReason.new("AFTER_MAXIMUM_ALLOWABLE_DATE")
  CANNOT_ADD_CAMPAIGN_WITH_CONVERSION_OPTIMIZER_BIDDING_STRATEGY = CampaignErrorReason.new("CANNOT_ADD_CAMPAIGN_WITH_CONVERSION_OPTIMIZER_BIDDING_STRATEGY")
  CANNOT_CHANGE_CAMPAIGN_TYPE = CampaignErrorReason.new("CANNOT_CHANGE_CAMPAIGN_TYPE")
  CANNOT_CHANGE_TV_CAMPAIGN = CampaignErrorReason.new("CANNOT_CHANGE_TV_CAMPAIGN")
  CANNOT_GO_BACK_TO_INCOMPLETE = CampaignErrorReason.new("CANNOT_GO_BACK_TO_INCOMPLETE")
  CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED = CampaignErrorReason.new("CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED")
  CANNOT_SET_ACCELERATED_DELIVERY_FOR_BUDGET_OPTIMIZER_CAMPAIGN = CampaignErrorReason.new("CANNOT_SET_ACCELERATED_DELIVERY_FOR_BUDGET_OPTIMIZER_CAMPAIGN")
  CANNOT_SET_DATE_TO_PAST = CampaignErrorReason.new("CANNOT_SET_DATE_TO_PAST")
  CANNOT_SET_POSITION_PREFERENCE_IF_NOT_SEARCH_TARGETED = CampaignErrorReason.new("CANNOT_SET_POSITION_PREFERENCE_IF_NOT_SEARCH_TARGETED")
  CURRENCY_NOT_VALID_FOR_ACCOUNT = CampaignErrorReason.new("CURRENCY_NOT_VALID_FOR_ACCOUNT")
  DUPLICATE_CAMPAIGN_NAME = CampaignErrorReason.new("DUPLICATE_CAMPAIGN_NAME")
  FREQUENCY_CAP_LEVEL_CANNOT_BE_NULL = CampaignErrorReason.new("FREQUENCY_CAP_LEVEL_CANNOT_BE_NULL")
  FREQUENCY_CAP_TIME_UNIT_CANNOT_BE_NULL = CampaignErrorReason.new("FREQUENCY_CAP_TIME_UNIT_CANNOT_BE_NULL")
  INCOMPATIBLE_CAMPAIGN_FIELD = CampaignErrorReason.new("INCOMPATIBLE_CAMPAIGN_FIELD")
  INVALID_AD_SERVING_OPTIMIZATION_STATUS = CampaignErrorReason.new("INVALID_AD_SERVING_OPTIMIZATION_STATUS")
  INVALID_CAMPAIGN_NAME = CampaignErrorReason.new("INVALID_CAMPAIGN_NAME")
  INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED = CampaignErrorReason.new("INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED")
  KEYWORD_QUOTA_EXCEEDED = CampaignErrorReason.new("KEYWORD_QUOTA_EXCEEDED")
  MAX_IMPRESSIONS_NOT_IN_RANGE = CampaignErrorReason.new("MAX_IMPRESSIONS_NOT_IN_RANGE")
  START_DATE_AFTER_END_DATE = CampaignErrorReason.new("START_DATE_AFTER_END_DATE")
  TIME_UNIT_NOT_SUPPORTED = CampaignErrorReason.new("TIME_UNIT_NOT_SUPPORTED")
  UNKNOWN = CampaignErrorReason.new("UNKNOWN")
  USE_BIDDING_TRANSITION_FIELD_INSTEAD_TO_SWITCH_BIDDING_STRATEGY = CampaignErrorReason.new("USE_BIDDING_TRANSITION_FIELD_INSTEAD_TO_SWITCH_BIDDING_STRATEGY")
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

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# MinuteOfHour
class MinuteOfHour < ::String
  FIFTEEN = MinuteOfHour.new("FIFTEEN")
  FORTY_FIVE = MinuteOfHour.new("FORTY_FIVE")
  THIRTY = MinuteOfHour.new("THIRTY")
  ZERO = MinuteOfHour.new("ZERO")
end

# NetworkCoverageType
class NetworkCoverageType < ::String
  CONTENT_CONTEXTUAL = NetworkCoverageType.new("CONTENT_CONTEXTUAL")
  CONTENT_NETWORK = NetworkCoverageType.new("CONTENT_NETWORK")
  CPA_REFERRAL = NetworkCoverageType.new("CPA_REFERRAL")
  GOOGLE_SEARCH = NetworkCoverageType.new("GOOGLE_SEARCH")
  SEARCH_NETWORK = NetworkCoverageType.new("SEARCH_NETWORK")
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

# PlatformType
class PlatformType < ::String
  DESKTOP = PlatformType.new("DESKTOP")
  HIGH_END_MOBILE = PlatformType.new("HIGH_END_MOBILE")
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

# get
# - selector - AdwordsApi::V201003::CampaignTargetService::CampaignTargetSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201003::CampaignTargetService::CampaignTargetPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201003::CampaignTargetService::CampaignTargetOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201003::CampaignTargetService::CampaignTargetReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
