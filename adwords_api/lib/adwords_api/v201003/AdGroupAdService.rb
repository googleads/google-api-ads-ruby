require 'xsd/qname'

module AdwordsApi; module V201003; module AdGroupAdService


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

# Dimensions
# - width - SOAP::SOAPInt
# - height - SOAP::SOAPInt
class Dimensions
  attr_accessor :width
  attr_accessor :height

  def initialize(width = nil, height = nil)
    @width = width
    @height = height
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

# Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - key - AdwordsApi::V201003::AdGroupAdService::MediaMediaExtendedCapabilityType
# - value - AdwordsApi::V201003::AdGroupAdService::MediaMediaExtendedCapabilityState
class Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Media_Size_DimensionsMapEntry
# - key - AdwordsApi::V201003::AdGroupAdService::MediaSize
# - value - AdwordsApi::V201003::AdGroupAdService::Dimensions
class Media_Size_DimensionsMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Media_Size_StringMapEntry
# - key - AdwordsApi::V201003::AdGroupAdService::MediaSize
# - value - SOAP::SOAPString
class Media_Size_StringMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
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

# PolicyViolationError.Part
# - index - SOAP::SOAPInt
# - length - SOAP::SOAPInt
class PolicyViolationErrorPart
  attr_accessor :index
  attr_accessor :length

  def initialize(index = nil, length = nil)
    @index = index
    @length = length
  end
end

# PolicyViolationKey
# - policyName - SOAP::SOAPString
# - violatingText - SOAP::SOAPString
class PolicyViolationKey
  attr_accessor :policyName
  attr_accessor :violatingText

  def initialize(policyName = nil, violatingText = nil)
    @policyName = policyName
    @violatingText = violatingText
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

# StatsSelector
# - dateRange - AdwordsApi::V201003::AdGroupAdService::DateRange
# - statsSelector_Type - SOAP::SOAPString
class StatsSelector
  attr_accessor :dateRange
  attr_accessor :statsSelector_Type

  def initialize(dateRange = nil, statsSelector_Type = nil)
    @dateRange = dateRange
    @statsSelector_Type = statsSelector_Type
  end
end

# AdStatsSelector
# - dateRange - AdwordsApi::V201003::AdGroupAdService::DateRange
# - statsSelector_Type - SOAP::SOAPString
class AdStatsSelector < StatsSelector
  attr_accessor :dateRange
  attr_accessor :statsSelector_Type

  def initialize(dateRange = nil, statsSelector_Type = nil)
    @dateRange = dateRange
    @statsSelector_Type = statsSelector_Type
  end
end

# AdUnionId
# - id - SOAP::SOAPLong
# - adUnionId_Type - SOAP::SOAPString
class AdUnionId
  attr_accessor :id
  attr_accessor :adUnionId_Type

  def initialize(id = nil, adUnionId_Type = nil)
    @id = id
    @adUnionId_Type = adUnionId_Type
  end
end

# TempAdUnionId
# - id - SOAP::SOAPLong
# - adUnionId_Type - SOAP::SOAPString
class TempAdUnionId < AdUnionId
  attr_accessor :id
  attr_accessor :adUnionId_Type

  def initialize(id = nil, adUnionId_Type = nil)
    @id = id
    @adUnionId_Type = adUnionId_Type
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

# ExemptionRequest
# - key - AdwordsApi::V201003::AdGroupAdService::PolicyViolationKey
class ExemptionRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# Media
# - mediaId - SOAP::SOAPLong
# - mediaTypeDb - AdwordsApi::V201003::AdGroupAdService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::AdGroupAdService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::AdGroupAdService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::AdGroupAdService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
class Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :extendedCapabilities
  attr_accessor :creationTime
  attr_accessor :media_Type

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, extendedCapabilities = [], creationTime = nil, media_Type = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @extendedCapabilities = extendedCapabilities
    @creationTime = creationTime
    @media_Type = media_Type
  end
end

# Audio
# - mediaId - SOAP::SOAPLong
# - mediaTypeDb - AdwordsApi::V201003::AdGroupAdService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::AdGroupAdService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::AdGroupAdService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::AdGroupAdService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - durationMillis - SOAP::SOAPLong
# - streamingUrl - SOAP::SOAPString
# - readyToPlayOnTheWeb - SOAP::SOAPBoolean
class Audio < Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :extendedCapabilities
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :durationMillis
  attr_accessor :streamingUrl
  attr_accessor :readyToPlayOnTheWeb

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, extendedCapabilities = [], creationTime = nil, media_Type = nil, durationMillis = nil, streamingUrl = nil, readyToPlayOnTheWeb = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @extendedCapabilities = extendedCapabilities
    @creationTime = creationTime
    @media_Type = media_Type
    @durationMillis = durationMillis
    @streamingUrl = streamingUrl
    @readyToPlayOnTheWeb = readyToPlayOnTheWeb
  end
end

# Image
# - mediaId - SOAP::SOAPLong
# - mediaTypeDb - AdwordsApi::V201003::AdGroupAdService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::AdGroupAdService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::AdGroupAdService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::AdGroupAdService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - data - SOAP::SOAPBase64
class Image < Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :extendedCapabilities
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :data

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, extendedCapabilities = [], creationTime = nil, media_Type = nil, data = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @extendedCapabilities = extendedCapabilities
    @creationTime = creationTime
    @media_Type = media_Type
    @data = data
  end
end

# Video
# - mediaId - SOAP::SOAPLong
# - mediaTypeDb - AdwordsApi::V201003::AdGroupAdService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::AdGroupAdService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::AdGroupAdService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::AdGroupAdService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::AdGroupAdService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - durationMillis - SOAP::SOAPLong
# - streamingUrl - SOAP::SOAPString
# - readyToPlayOnTheWeb - SOAP::SOAPBoolean
# - industryStandardCommercialIdentifier - SOAP::SOAPString
# - advertisingId - SOAP::SOAPString
class Video < Media
  attr_accessor :mediaId
  attr_accessor :mediaTypeDb
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :mediaSubType
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :extendedCapabilities
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :durationMillis
  attr_accessor :streamingUrl
  attr_accessor :readyToPlayOnTheWeb
  attr_accessor :industryStandardCommercialIdentifier
  attr_accessor :advertisingId

  def initialize(mediaId = nil, mediaTypeDb = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, mediaSubType = nil, name = nil, fileSize = nil, extendedCapabilities = [], creationTime = nil, media_Type = nil, durationMillis = nil, streamingUrl = nil, readyToPlayOnTheWeb = nil, industryStandardCommercialIdentifier = nil, advertisingId = nil)
    @mediaId = mediaId
    @mediaTypeDb = mediaTypeDb
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @mediaSubType = mediaSubType
    @name = name
    @fileSize = fileSize
    @extendedCapabilities = extendedCapabilities
    @creationTime = creationTime
    @media_Type = media_Type
    @durationMillis = durationMillis
    @streamingUrl = streamingUrl
    @readyToPlayOnTheWeb = readyToPlayOnTheWeb
    @industryStandardCommercialIdentifier = industryStandardCommercialIdentifier
    @advertisingId = advertisingId
  end
end

# Stats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201003::AdGroupAdService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::AdGroupAdService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::AdGroupAdService::Money
# - averageCpm - AdwordsApi::V201003::AdGroupAdService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::AdGroupAdService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::AdGroupAdService::Money
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
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil)
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
    @stats_Type = stats_Type
  end
end

# AdExtensionOverrideStats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201003::AdGroupAdService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::AdGroupAdService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::AdGroupAdService::Money
# - averageCpm - AdwordsApi::V201003::AdGroupAdService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::AdGroupAdService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::AdGroupAdService::Money
# - stats_Type - SOAP::SOAPString
class AdExtensionOverrideStats < Stats
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
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil)
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
    @stats_Type = stats_Type
  end
end

# AdStats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201003::AdGroupAdService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::AdGroupAdService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::AdGroupAdService::Money
# - averageCpm - AdwordsApi::V201003::AdGroupAdService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::AdGroupAdService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::AdGroupAdService::Money
# - stats_Type - SOAP::SOAPString
# - percentServed - SOAP::SOAPDouble
class AdStats < Stats
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
  attr_accessor :stats_Type
  attr_accessor :percentServed

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, stats_Type = nil, percentServed = nil)
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
    @stats_Type = stats_Type
    @percentServed = percentServed
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
# - dayOfWeek - AdwordsApi::V201003::AdGroupAdService::DayOfWeek
# - startHour - SOAP::SOAPInt
# - startMinute - AdwordsApi::V201003::AdGroupAdService::MinuteOfHour
# - endHour - SOAP::SOAPInt
# - endMinute - AdwordsApi::V201003::AdGroupAdService::MinuteOfHour
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
# - networkCoverageType - AdwordsApi::V201003::AdGroupAdService::NetworkCoverageType
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
# - platformType - AdwordsApi::V201003::AdGroupAdService::PlatformType
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
# - age - AdwordsApi::V201003::AdGroupAdService::AgeTargetAge
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
# - gender - AdwordsApi::V201003::AdGroupAdService::GenderTargetGender
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
# - vertices - AdwordsApi::V201003::AdGroupAdService::GeoPoint
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
# - geoPoint - AdwordsApi::V201003::AdGroupAdService::GeoPoint
# - radiusDistanceUnits - AdwordsApi::V201003::AdGroupAdService::ProximityTargetDistanceUnits
# - radiusInUnits - SOAP::SOAPDouble
# - address - AdwordsApi::V201003::AdGroupAdService::Address
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

# TemplateElementField
# - name - SOAP::SOAPString
# - type - AdwordsApi::V201003::AdGroupAdService::TemplateElementFieldType
# - fieldText - SOAP::SOAPString
# - fieldMedia - AdwordsApi::V201003::AdGroupAdService::Media
class TemplateElementField
  attr_accessor :name
  attr_accessor :type
  attr_accessor :fieldText
  attr_accessor :fieldMedia

  def initialize(name = nil, type = nil, fieldText = nil, fieldMedia = nil)
    @name = name
    @type = type
    @fieldText = fieldText
    @fieldMedia = fieldMedia
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

# AdError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::AdErrorReason
class AdError < ApiError
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

# AdGroupAdError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::AdGroupAdErrorReason
class AdGroupAdError < ApiError
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

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::ClientTermsErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::DateErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::DistinctErrorReason
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

# EntityCountLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
class EntityCountLimitExceeded < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# AdGroupAdCountLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
class AdGroupAdCountLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::EntityNotFoundReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::IdErrorReason
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

# ImageError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::ImageErrorReason
class ImageError < ApiError
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
# - reason - AdwordsApi::V201003::AdGroupAdService::InternalApiErrorReason
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

# MediaError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::MediaErrorReason
class MediaError < ApiError
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
# - reason - AdwordsApi::V201003::AdGroupAdService::NewEntityCreationErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::NullErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::OperationAccessDeniedReason
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

# PagingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::AdGroupAdService::PagingErrorReason
class PagingError < ApiError
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
# - reason - AdwordsApi::V201003::AdGroupAdService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::RangeErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::ReadOnlyErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::RequestErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::RequiredErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::SizeLimitErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::StatsQueryErrorReason
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
# - reason - AdwordsApi::V201003::AdGroupAdService::DatabaseErrorReason
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

# PolicyViolationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdwordsApi::V201003::AdGroupAdService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdwordsApi::V201003::AdGroupAdService::PolicyViolationErrorPart
class PolicyViolationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
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
# - errors - AdwordsApi::V201003::AdGroupAdService::ApiError
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

# TemplateElement
# - uniqueName - SOAP::SOAPString
# - fields - AdwordsApi::V201003::AdGroupAdService::TemplateElementField
class TemplateElement
  attr_accessor :uniqueName
  attr_accessor :fields

  def initialize(uniqueName = nil, fields = [])
    @uniqueName = uniqueName
    @fields = fields
  end
end

# AdGroupAdSelector
# - campaignIds - SOAP::SOAPLong
# - adGroupIds - SOAP::SOAPLong
# - adIds - SOAP::SOAPLong
# - statuses - AdwordsApi::V201003::AdGroupAdService::AdGroupAdStatus
# - statsSelector - AdwordsApi::V201003::AdGroupAdService::AdStatsSelector
# - paging - AdwordsApi::V201003::AdGroupAdService::Paging
class AdGroupAdSelector
  attr_accessor :campaignIds
  attr_accessor :adGroupIds
  attr_accessor :adIds
  attr_accessor :statuses
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(campaignIds = [], adGroupIds = [], adIds = [], statuses = [], statsSelector = nil, paging = nil)
    @campaignIds = campaignIds
    @adGroupIds = adGroupIds
    @adIds = adIds
    @statuses = statuses
    @statsSelector = statsSelector
    @paging = paging
  end
end

# Ad
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
class Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
  end
end

# DeprecatedAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - type - AdwordsApi::V201003::AdGroupAdService::DeprecatedAdType
class DeprecatedAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :name
  attr_accessor :type

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, name = nil, type = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @name = name
    @type = type
  end
end

# MobileAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - headline - SOAP::SOAPString
# - description - SOAP::SOAPString
# - markupLanguages - AdwordsApi::V201003::AdGroupAdService::MarkupLanguageType
# - mobileCarriers - SOAP::SOAPString
# - businessName - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
# - phoneNumber - SOAP::SOAPString
class MobileAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :headline
  attr_accessor :description
  attr_accessor :markupLanguages
  attr_accessor :mobileCarriers
  attr_accessor :businessName
  attr_accessor :countryCode
  attr_accessor :phoneNumber

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, headline = nil, description = nil, markupLanguages = [], mobileCarriers = [], businessName = nil, countryCode = nil, phoneNumber = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @headline = headline
    @description = description
    @markupLanguages = markupLanguages
    @mobileCarriers = mobileCarriers
    @businessName = businessName
    @countryCode = countryCode
    @phoneNumber = phoneNumber
  end
end

# TextAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - headline - SOAP::SOAPString
# - description1 - SOAP::SOAPString
# - description2 - SOAP::SOAPString
class TextAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :headline
  attr_accessor :description1
  attr_accessor :description2

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, headline = nil, description1 = nil, description2 = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @headline = headline
    @description1 = description1
    @description2 = description2
  end
end

# MobileImageAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - markupLanguages - AdwordsApi::V201003::AdGroupAdService::MarkupLanguageType
# - mobileCarriers - SOAP::SOAPString
# - image - AdwordsApi::V201003::AdGroupAdService::Image
class MobileImageAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :markupLanguages
  attr_accessor :mobileCarriers
  attr_accessor :image

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, markupLanguages = [], mobileCarriers = [], image = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @markupLanguages = markupLanguages
    @mobileCarriers = mobileCarriers
    @image = image
  end
end

# RichMediaAd
# abstract
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Dimensions
# - snippet - SOAP::SOAPString
# - impressionBeaconUrl - SOAP::SOAPString
# - certifiedVendorFormatId - SOAP::SOAPLong
class RichMediaAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :name
  attr_accessor :dimensions
  attr_accessor :snippet
  attr_accessor :impressionBeaconUrl
  attr_accessor :certifiedVendorFormatId

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, name = nil, dimensions = nil, snippet = nil, impressionBeaconUrl = nil, certifiedVendorFormatId = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @name = name
    @dimensions = dimensions
    @snippet = snippet
    @impressionBeaconUrl = impressionBeaconUrl
    @certifiedVendorFormatId = certifiedVendorFormatId
  end
end

# ThirdPartyRedirectAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Dimensions
# - snippet - SOAP::SOAPString
# - impressionBeaconUrl - SOAP::SOAPString
# - certifiedVendorFormatId - SOAP::SOAPLong
# - isCookieTargeted - SOAP::SOAPBoolean
# - isUserInterestTargeted - SOAP::SOAPBoolean
# - isTagged - SOAP::SOAPBoolean
# - videoTypes - AdwordsApi::V201003::AdGroupAdService::VideoType
class ThirdPartyRedirectAd < RichMediaAd
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :name
  attr_accessor :dimensions
  attr_accessor :snippet
  attr_accessor :impressionBeaconUrl
  attr_accessor :certifiedVendorFormatId
  attr_accessor :isCookieTargeted
  attr_accessor :isUserInterestTargeted
  attr_accessor :isTagged
  attr_accessor :videoTypes

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, name = nil, dimensions = nil, snippet = nil, impressionBeaconUrl = nil, certifiedVendorFormatId = nil, isCookieTargeted = nil, isUserInterestTargeted = nil, isTagged = nil, videoTypes = [])
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @name = name
    @dimensions = dimensions
    @snippet = snippet
    @impressionBeaconUrl = impressionBeaconUrl
    @certifiedVendorFormatId = certifiedVendorFormatId
    @isCookieTargeted = isCookieTargeted
    @isUserInterestTargeted = isUserInterestTargeted
    @isTagged = isTagged
    @videoTypes = videoTypes
  end
end

# ImageAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - image - AdwordsApi::V201003::AdGroupAdService::Image
# - name - SOAP::SOAPString
class ImageAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :image
  attr_accessor :name

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, image = nil, name = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @image = image
    @name = name
  end
end

# LocalBusinessAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - fullBusinessName - SOAP::SOAPString
# - phoneNumber - SOAP::SOAPString
# - streetAddress - SOAP::SOAPString
# - city - SOAP::SOAPString
# - region - SOAP::SOAPString
# - regionCode - SOAP::SOAPString
# - postalCode - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
# - businessName - SOAP::SOAPString
# - description1 - SOAP::SOAPString
# - description2 - SOAP::SOAPString
# - target - AdwordsApi::V201003::AdGroupAdService::ProximityTarget
# - businessImage - AdwordsApi::V201003::AdGroupAdService::Image
# - icon - AdwordsApi::V201003::AdGroupAdService::Image
class LocalBusinessAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :fullBusinessName
  attr_accessor :phoneNumber
  attr_accessor :streetAddress
  attr_accessor :city
  attr_accessor :region
  attr_accessor :regionCode
  attr_accessor :postalCode
  attr_accessor :countryCode
  attr_accessor :businessName
  attr_accessor :description1
  attr_accessor :description2
  attr_accessor :target
  attr_accessor :businessImage
  attr_accessor :icon

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, fullBusinessName = nil, phoneNumber = nil, streetAddress = nil, city = nil, region = nil, regionCode = nil, postalCode = nil, countryCode = nil, businessName = nil, description1 = nil, description2 = nil, target = nil, businessImage = nil, icon = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @fullBusinessName = fullBusinessName
    @phoneNumber = phoneNumber
    @streetAddress = streetAddress
    @city = city
    @region = region
    @regionCode = regionCode
    @postalCode = postalCode
    @countryCode = countryCode
    @businessName = businessName
    @description1 = description1
    @description2 = description2
    @target = target
    @businessImage = businessImage
    @icon = icon
  end
end

# TemplateAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::AdGroupAdService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - templateId - SOAP::SOAPLong
# - adUnionId - AdwordsApi::V201003::AdGroupAdService::AdUnionId
# - templateElements - AdwordsApi::V201003::AdGroupAdService::TemplateElement
# - dimensions - AdwordsApi::V201003::AdGroupAdService::Dimensions
# - name - SOAP::SOAPString
# - duration - SOAP::SOAPInt
class TemplateAd < Ad
  attr_accessor :id
  attr_accessor :url
  attr_accessor :displayUrl
  attr_accessor :approvalStatus
  attr_accessor :disapprovalReasons
  attr_accessor :trademarkDisapproved
  attr_accessor :ad_Type
  attr_accessor :templateId
  attr_accessor :adUnionId
  attr_accessor :templateElements
  attr_accessor :dimensions
  attr_accessor :name
  attr_accessor :duration

  def initialize(id = nil, url = nil, displayUrl = nil, approvalStatus = nil, disapprovalReasons = [], trademarkDisapproved = nil, ad_Type = nil, templateId = nil, adUnionId = nil, templateElements = [], dimensions = nil, name = nil, duration = nil)
    @id = id
    @url = url
    @displayUrl = displayUrl
    @approvalStatus = approvalStatus
    @disapprovalReasons = disapprovalReasons
    @trademarkDisapproved = trademarkDisapproved
    @ad_Type = ad_Type
    @templateId = templateId
    @adUnionId = adUnionId
    @templateElements = templateElements
    @dimensions = dimensions
    @name = name
    @duration = duration
  end
end

# AdGroupAd
# - adGroupId - SOAP::SOAPLong
# - ad - AdwordsApi::V201003::AdGroupAdService::Ad
# - status - AdwordsApi::V201003::AdGroupAdService::AdGroupAdStatus
# - stats - AdwordsApi::V201003::AdGroupAdService::AdStats
class AdGroupAd
  attr_accessor :adGroupId
  attr_accessor :ad
  attr_accessor :status
  attr_accessor :stats

  def initialize(adGroupId = nil, ad = nil, status = nil, stats = nil)
    @adGroupId = adGroupId
    @ad = ad
    @status = status
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

# AdGroupAdReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdwordsApi::V201003::AdGroupAdService::AdGroupAd
class AdGroupAdReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201003::AdGroupAdService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# AdGroupAdOperation
# - operator - AdwordsApi::V201003::AdGroupAdService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::AdGroupAdService::AdGroupAd
# - exemptionRequests - AdwordsApi::V201003::AdGroupAdService::ExemptionRequest
class AdGroupAdOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand
  attr_accessor :exemptionRequests

  def initialize(operator = nil, operation_Type = nil, operand = nil, exemptionRequests = [])
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
    @exemptionRequests = exemptionRequests
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

# AdGroupAdPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdwordsApi::V201003::AdGroupAdService::AdGroupAd
class AdGroupAdPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# Ad.ApprovalStatus
class AdApprovalStatus < ::String
  APPROVED = AdApprovalStatus.new("APPROVED")
  DISAPPROVED = AdApprovalStatus.new("DISAPPROVED")
  FAMILY_SAFE = AdApprovalStatus.new("FAMILY_SAFE")
  NON_FAMILY_SAFE = AdApprovalStatus.new("NON_FAMILY_SAFE")
  PORN = AdApprovalStatus.new("PORN")
  UNCHECKED = AdApprovalStatus.new("UNCHECKED")
end

# AdError.Reason
class AdErrorReason < ::String
  ADDRESS_INVALID = AdErrorReason.new("ADDRESS_INVALID")
  ADDRESS_NOT_COMPLETE = AdErrorReason.new("ADDRESS_NOT_COMPLETE")
  APPROXIMATELY_TOO_LONG = AdErrorReason.new("APPROXIMATELY_TOO_LONG")
  APPROXIMATELY_TOO_SHORT = AdErrorReason.new("APPROXIMATELY_TOO_SHORT")
  AUDIO_ERROR = AdErrorReason.new("AUDIO_ERROR")
  CANNOT_SET_BUSINESS_NAME_IF_URL_SET = AdErrorReason.new("CANNOT_SET_BUSINESS_NAME_IF_URL_SET")
  CUSTOMER_NOT_APPROVED_MOBILEADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_MOBILEADS")
  CUSTOMER_NOT_APPROVED_THIRDPARTY_ADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_THIRDPARTY_ADS")
  CUSTOMER_NOT_APPROVED_THIRDPARTY_REDIRECT_ADS = AdErrorReason.new("CUSTOMER_NOT_APPROVED_THIRDPARTY_REDIRECT_ADS")
  CUSTOMER_NOT_ELIGIBLE_FOR_UPDATING_BEACON_URL = AdErrorReason.new("CUSTOMER_NOT_ELIGIBLE_FOR_UPDATING_BEACON_URL")
  DIMENSION_ALREADY_IN_UNION = AdErrorReason.new("DIMENSION_ALREADY_IN_UNION")
  DIMENSION_MUST_BE_SET = AdErrorReason.new("DIMENSION_MUST_BE_SET")
  DIMENSION_NOT_IN_UNION = AdErrorReason.new("DIMENSION_NOT_IN_UNION")
  DISPLAY_URL_CANNOT_BE_SPECIFIED = AdErrorReason.new("DISPLAY_URL_CANNOT_BE_SPECIFIED")
  DOMESTIC_PHONE_NUMBER_FORMAT = AdErrorReason.new("DOMESTIC_PHONE_NUMBER_FORMAT")
  ELEMENT_NOT_PRESENT = AdErrorReason.new("ELEMENT_NOT_PRESENT")
  EMERGENCY_PHONE_NUMBER = AdErrorReason.new("EMERGENCY_PHONE_NUMBER")
  EMPTY_FIELD = AdErrorReason.new("EMPTY_FIELD")
  FIELD_NOT_PRESENT = AdErrorReason.new("FIELD_NOT_PRESENT")
  IMAGE_ERROR = AdErrorReason.new("IMAGE_ERROR")
  INCONSISTENT_STATUS_IN_TEMPLATE_UNION = AdErrorReason.new("INCONSISTENT_STATUS_IN_TEMPLATE_UNION")
  INCORRECT_LENGTH = AdErrorReason.new("INCORRECT_LENGTH")
  INVALID_AD_ADDRESS_CAMPAIGN_TARGET = AdErrorReason.new("INVALID_AD_ADDRESS_CAMPAIGN_TARGET")
  INVALID_AD_TYPE = AdErrorReason.new("INVALID_AD_TYPE")
  INVALID_ATTRIBUTES_FOR_MOBILE_IMAGE = AdErrorReason.new("INVALID_ATTRIBUTES_FOR_MOBILE_IMAGE")
  INVALID_ATTRIBUTES_FOR_MOBILE_TEXT = AdErrorReason.new("INVALID_ATTRIBUTES_FOR_MOBILE_TEXT")
  INVALID_COUNTRY_CODE = AdErrorReason.new("INVALID_COUNTRY_CODE")
  INVALID_FORMAT = AdErrorReason.new("INVALID_FORMAT")
  INVALID_INPUT = AdErrorReason.new("INVALID_INPUT")
  INVALID_MARKUP_LANGUAGE = AdErrorReason.new("INVALID_MARKUP_LANGUAGE")
  INVALID_MOBILE_CARRIER = AdErrorReason.new("INVALID_MOBILE_CARRIER")
  INVALID_MOBILE_CARRIER_TARGET = AdErrorReason.new("INVALID_MOBILE_CARRIER_TARGET")
  INVALID_NUMBER_OF_ELEMENTS = AdErrorReason.new("INVALID_NUMBER_OF_ELEMENTS")
  INVALID_PHONE_NUMBER_FORMAT = AdErrorReason.new("INVALID_PHONE_NUMBER_FORMAT")
  INVALID_RICH_MEDIA_CERTIFIED_VENDOR_FORMAT_ID = AdErrorReason.new("INVALID_RICH_MEDIA_CERTIFIED_VENDOR_FORMAT_ID")
  INVALID_TEMPLATE_DATA = AdErrorReason.new("INVALID_TEMPLATE_DATA")
  INVALID_TEMPLATE_ELEMENT_FIELD_TYPE = AdErrorReason.new("INVALID_TEMPLATE_ELEMENT_FIELD_TYPE")
  INVALID_TEMPLATE_ID = AdErrorReason.new("INVALID_TEMPLATE_ID")
  INVALID_YOUTUBE_DISPLAY_URL = AdErrorReason.new("INVALID_YOUTUBE_DISPLAY_URL")
  LINE_TOO_WIDE = AdErrorReason.new("LINE_TOO_WIDE")
  MARKUP_LANGUAGES_PRESENT = AdErrorReason.new("MARKUP_LANGUAGES_PRESENT")
  MISSING_ADDRESS_COMPONENT = AdErrorReason.new("MISSING_ADDRESS_COMPONENT")
  MISSING_ADVERTISEMENT_NAME = AdErrorReason.new("MISSING_ADVERTISEMENT_NAME")
  MISSING_BUSINESS_NAME = AdErrorReason.new("MISSING_BUSINESS_NAME")
  MISSING_DESCRIPTION1 = AdErrorReason.new("MISSING_DESCRIPTION1")
  MISSING_DESCRIPTION2 = AdErrorReason.new("MISSING_DESCRIPTION2")
  MISSING_DESTINATION_URL = AdErrorReason.new("MISSING_DESTINATION_URL")
  MISSING_DIMENSION = AdErrorReason.new("MISSING_DIMENSION")
  MISSING_DISPLAY_URL = AdErrorReason.new("MISSING_DISPLAY_URL")
  MISSING_HEADLINE = AdErrorReason.new("MISSING_HEADLINE")
  MISSING_HEIGHT = AdErrorReason.new("MISSING_HEIGHT")
  MISSING_IMAGE = AdErrorReason.new("MISSING_IMAGE")
  MISSING_MARKUP_LANGUAGES = AdErrorReason.new("MISSING_MARKUP_LANGUAGES")
  MISSING_MOBILE_CARRIER = AdErrorReason.new("MISSING_MOBILE_CARRIER")
  MISSING_PHONE = AdErrorReason.new("MISSING_PHONE")
  MISSING_REQUIRED_TEMPLATE_FIELDS = AdErrorReason.new("MISSING_REQUIRED_TEMPLATE_FIELDS")
  MISSING_TEMPLATE_FIELD_VALUE = AdErrorReason.new("MISSING_TEMPLATE_FIELD_VALUE")
  MISSING_TEXT = AdErrorReason.new("MISSING_TEXT")
  MISSING_URL_AND_PHONE = AdErrorReason.new("MISSING_URL_AND_PHONE")
  MISSING_VISIBLE_URL = AdErrorReason.new("MISSING_VISIBLE_URL")
  MISSING_WIDTH = AdErrorReason.new("MISSING_WIDTH")
  MUST_USE_TEMP_AD_UNION_ID_ON_ADD = AdErrorReason.new("MUST_USE_TEMP_AD_UNION_ID_ON_ADD")
  TOO_LONG = AdErrorReason.new("TOO_LONG")
  TOO_SHORT = AdErrorReason.new("TOO_SHORT")
  UNION_DIMENSIONS_CANNOT_CHANGE = AdErrorReason.new("UNION_DIMENSIONS_CANNOT_CHANGE")
  UNKNOWN_ADDRESS_COMPONENT = AdErrorReason.new("UNKNOWN_ADDRESS_COMPONENT")
  UNKNOWN_FIELD_NAME = AdErrorReason.new("UNKNOWN_FIELD_NAME")
  UNKNOWN_UNIQUE_NAME = AdErrorReason.new("UNKNOWN_UNIQUE_NAME")
  UNSUPPORTED_DIMENSIONS = AdErrorReason.new("UNSUPPORTED_DIMENSIONS")
  URL_HOST_NAME_TOO_LONG = AdErrorReason.new("URL_HOST_NAME_TOO_LONG")
  URL_INVALID_TOP_LEVEL_DOMAIN = AdErrorReason.new("URL_INVALID_TOP_LEVEL_DOMAIN")
  URL_MALFORMED = AdErrorReason.new("URL_MALFORMED")
  URL_NO_HOST = AdErrorReason.new("URL_NO_HOST")
  URL_NO_SCHEME = AdErrorReason.new("URL_NO_SCHEME")
  URL_NO_TOP_LEVEL_DOMAIN = AdErrorReason.new("URL_NO_TOP_LEVEL_DOMAIN")
  URL_PATH_NOT_ALLOWED = AdErrorReason.new("URL_PATH_NOT_ALLOWED")
  URL_PORT_NOT_ALLOWED = AdErrorReason.new("URL_PORT_NOT_ALLOWED")
  URL_QUERY_NOT_ALLOWED = AdErrorReason.new("URL_QUERY_NOT_ALLOWED")
  USER_DOES_NOT_HAVE_ACCESS_TO_TEMPLATE = AdErrorReason.new("USER_DOES_NOT_HAVE_ACCESS_TO_TEMPLATE")
  VALUE_NOT_IN_RANGE = AdErrorReason.new("VALUE_NOT_IN_RANGE")
  VIDEO_RETRIEVAL_ERROR = AdErrorReason.new("VIDEO_RETRIEVAL_ERROR")
end

# AdGroupAd.Status
class AdGroupAdStatus < ::String
  DISABLED = AdGroupAdStatus.new("DISABLED")
  ENABLED = AdGroupAdStatus.new("ENABLED")
  PAUSED = AdGroupAdStatus.new("PAUSED")
end

# AdGroupAdError.Reason
class AdGroupAdErrorReason < ::String
  AD_NOT_UNDER_ADGROUP = AdGroupAdErrorReason.new("AD_NOT_UNDER_ADGROUP")
  CANNOT_CREATE_DEPRECATED_ADS = AdGroupAdErrorReason.new("CANNOT_CREATE_DEPRECATED_ADS")
  CANNOT_OPERATE_ON_DELETED_ADGROUPAD = AdGroupAdErrorReason.new("CANNOT_OPERATE_ON_DELETED_ADGROUPAD")
  EMPTY_FIELD = AdGroupAdErrorReason.new("EMPTY_FIELD")
  ENTITY_REFERENCED_IN_MULTIPLE_OPS = AdGroupAdErrorReason.new("ENTITY_REFERENCED_IN_MULTIPLE_OPS")
  UNSUPPORTED_OPERATION = AdGroupAdErrorReason.new("UNSUPPORTED_OPERATION")
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

# DeprecatedAd.Type
class DeprecatedAdType < ::String
  AUDIO = DeprecatedAdType.new("AUDIO")
  CLICK_TO_CALL = DeprecatedAdType.new("CLICK_TO_CALL")
  FROOGLE = DeprecatedAdType.new("FROOGLE")
  GADGET = DeprecatedAdType.new("GADGET")
  GADGET_TEMPLATE = DeprecatedAdType.new("GADGET_TEMPLATE")
  IN_STREAM_VIDEO = DeprecatedAdType.new("IN_STREAM_VIDEO")
  PRINT = DeprecatedAdType.new("PRINT")
  TEXT_LINK = DeprecatedAdType.new("TEXT_LINK")
  TEXT_WIDE = DeprecatedAdType.new("TEXT_WIDE")
  TEXT_WITH_VIDEO = DeprecatedAdType.new("TEXT_WITH_VIDEO")
  VIDEO = DeprecatedAdType.new("VIDEO")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
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

# ImageError.Reason
class ImageErrorReason < ::String
  ANIMATED_NOT_ALLOWED = ImageErrorReason.new("ANIMATED_NOT_ALLOWED")
  ANIMATED_VISUAL_EFFECT = ImageErrorReason.new("ANIMATED_VISUAL_EFFECT")
  ANIMATION_TOO_LONG = ImageErrorReason.new("ANIMATION_TOO_LONG")
  BAD_REQUEST = ImageErrorReason.new("BAD_REQUEST")
  CMYK_JPEG_NOT_ALLOWED = ImageErrorReason.new("CMYK_JPEG_NOT_ALLOWED")
  ERROR_STORING_IMAGE = ImageErrorReason.new("ERROR_STORING_IMAGE")
  FILE_TOO_LARGE = ImageErrorReason.new("FILE_TOO_LARGE")
  FLASH_BAD_GETURL_TARGET = ImageErrorReason.new("FLASH_BAD_GETURL_TARGET")
  FLASH_ERROR = ImageErrorReason.new("FLASH_ERROR")
  FLASH_HAS_MOUSE_TRACKING = ImageErrorReason.new("FLASH_HAS_MOUSE_TRACKING")
  FLASH_HAS_NETWORK_METHODS = ImageErrorReason.new("FLASH_HAS_NETWORK_METHODS")
  FLASH_HAS_NETWORK_OBJECTS = ImageErrorReason.new("FLASH_HAS_NETWORK_OBJECTS")
  FLASH_HAS_RANDOM_NUM = ImageErrorReason.new("FLASH_HAS_RANDOM_NUM")
  FLASH_HAS_URL = ImageErrorReason.new("FLASH_HAS_URL")
  FLASH_NOT_ALLOWED = ImageErrorReason.new("FLASH_NOT_ALLOWED")
  FLASH_SELF_TARGETS = ImageErrorReason.new("FLASH_SELF_TARGETS")
  FLASH_VERSION_NOT_SUPPORTED = ImageErrorReason.new("FLASH_VERSION_NOT_SUPPORTED")
  FLASH_WITHOUT_CLICKTAG = ImageErrorReason.new("FLASH_WITHOUT_CLICKTAG")
  IMAGE_DATA_TOO_LARGE = ImageErrorReason.new("IMAGE_DATA_TOO_LARGE")
  IMAGE_PROCESSING_ERROR = ImageErrorReason.new("IMAGE_PROCESSING_ERROR")
  IMAGE_TOO_SMALL = ImageErrorReason.new("IMAGE_TOO_SMALL")
  INVALID_IMAGE = ImageErrorReason.new("INVALID_IMAGE")
  INVALID_INPUT = ImageErrorReason.new("INVALID_INPUT")
  LAYOUT_PROBLEM = ImageErrorReason.new("LAYOUT_PROBLEM")
  PROBLEM_READING_FILE = ImageErrorReason.new("PROBLEM_READING_FILE")
  PROBLEM_READING_IMAGE_FILE = ImageErrorReason.new("PROBLEM_READING_IMAGE_FILE")
  SERVER_ERROR = ImageErrorReason.new("SERVER_ERROR")
  STORAGE_ERROR = ImageErrorReason.new("STORAGE_ERROR")
  UNEXPECTED_SIZE = ImageErrorReason.new("UNEXPECTED_SIZE")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# MarkupLanguageType
class MarkupLanguageType < ::String
  CHTML = MarkupLanguageType.new("CHTML")
  HTML = MarkupLanguageType.new("HTML")
  WML = MarkupLanguageType.new("WML")
  XHTML = MarkupLanguageType.new("XHTML")
end

# Media.MediaExtendedCapabilityState
class MediaMediaExtendedCapabilityState < ::String
  FAILED_PREREQ = MediaMediaExtendedCapabilityState.new("FAILED_PREREQ")
  MEETS_CRITERIA = MediaMediaExtendedCapabilityState.new("MEETS_CRITERIA")
  NOT_SUPPORTED = MediaMediaExtendedCapabilityState.new("NOT_SUPPORTED")
  PASSED_PREREQ = MediaMediaExtendedCapabilityState.new("PASSED_PREREQ")
  SUPPORTED = MediaMediaExtendedCapabilityState.new("SUPPORTED")
  UNKNOWN = MediaMediaExtendedCapabilityState.new("UNKNOWN")
end

# Media.MediaExtendedCapabilityType
class MediaMediaExtendedCapabilityType < ::String
  FLV_320 = MediaMediaExtendedCapabilityType.new("FLV_320")
  GXF_SD = MediaMediaExtendedCapabilityType.new("GXF_SD")
  MPEG2_PROGRAM_STREAM_SD = MediaMediaExtendedCapabilityType.new("MPEG2_PROGRAM_STREAM_SD")
  MPEG2_PROGRAM_STREAM_SD_WITH_BLACK = MediaMediaExtendedCapabilityType.new("MPEG2_PROGRAM_STREAM_SD_WITH_BLACK")
  MPEG2_TRANSPORT_STREAM_SD = MediaMediaExtendedCapabilityType.new("MPEG2_TRANSPORT_STREAM_SD")
end

# Media.MediaSubType
class MediaMediaSubType < ::String
  ADS_DB_STORED = MediaMediaSubType.new("ADS_DB_STORED")
  AMS_STORED = MediaMediaSubType.new("AMS_STORED")
  GOOGLE_HOSTED = MediaMediaSubType.new("GOOGLE_HOSTED")
  IRS_STORED = MediaMediaSubType.new("IRS_STORED")
  YOU_TUBE_HOSTED = MediaMediaSubType.new("YOU_TUBE_HOSTED")
end

# Media.MediaType
class MediaMediaType < ::String
  AUDIO = MediaMediaType.new("AUDIO")
  DYNAMIC_IMAGE = MediaMediaType.new("DYNAMIC_IMAGE")
  HTML = MediaMediaType.new("HTML")
  ICON = MediaMediaType.new("ICON")
  IMAGE = MediaMediaType.new("IMAGE")
  STANDARD_ICON = MediaMediaType.new("STANDARD_ICON")
  VIDEO = MediaMediaType.new("VIDEO")
  VIDEO_IMAGE = MediaMediaType.new("VIDEO_IMAGE")
end

# Media.MimeType
class MediaMimeType < ::String
  AUDIO_MP3 = MediaMimeType.new("AUDIO_MP3")
  AUDIO_WAV = MediaMimeType.new("AUDIO_WAV")
  FLASH = MediaMimeType.new("FLASH")
  IMAGE_GIF = MediaMimeType.new("IMAGE_GIF")
  IMAGE_JPEG = MediaMimeType.new("IMAGE_JPEG")
  IMAGE_PNG = MediaMimeType.new("IMAGE_PNG")
  MSEXCEL = MediaMimeType.new("MSEXCEL")
  MSWORD = MediaMimeType.new("MSWORD")
  PDF = MediaMimeType.new("PDF")
  RTF = MediaMimeType.new("RTF")
  TEXT_HTML = MediaMimeType.new("TEXT_HTML")
end

# Media.Size
class MediaSize < ::String
  FULL = MediaSize.new("FULL")
  PREVIEW = MediaSize.new("PREVIEW")
  SHRUNKEN = MediaSize.new("SHRUNKEN")
  VIDEO_THUMBNAIL = MediaSize.new("VIDEO_THUMBNAIL")
end

# MediaError.Reason
class MediaErrorReason < ::String
  CANNOT_ADD_STANDARD_ICON = MediaErrorReason.new("CANNOT_ADD_STANDARD_ICON")
  DUPLICATE_MEDIA = MediaErrorReason.new("DUPLICATE_MEDIA")
  EMPTY_FIELD = MediaErrorReason.new("EMPTY_FIELD")
  ENTITY_REFERENCED_IN_MULTIPLE_OPS = MediaErrorReason.new("ENTITY_REFERENCED_IN_MULTIPLE_OPS")
  FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE = MediaErrorReason.new("FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE")
  INVALID_MEDIA_ID = MediaErrorReason.new("INVALID_MEDIA_ID")
  INVALID_MEDIA_SUB_TYPE = MediaErrorReason.new("INVALID_MEDIA_SUB_TYPE")
  INVALID_MEDIA_TYPE = MediaErrorReason.new("INVALID_MEDIA_TYPE")
  INVALID_REFERENCE_ID = MediaErrorReason.new("INVALID_REFERENCE_ID")
  MEDIA_FAILED_TRANSCODING = MediaErrorReason.new("MEDIA_FAILED_TRANSCODING")
  MEDIA_TYPE_DOES_NOT_MATCH_OBJECT_TYPE = MediaErrorReason.new("MEDIA_TYPE_DOES_NOT_MATCH_OBJECT_TYPE")
  NO_FIELDS_SPECIFIED = MediaErrorReason.new("NO_FIELDS_SPECIFIED")
  NULL_REFERENCE_ID_AND_MEDIA_ID = MediaErrorReason.new("NULL_REFERENCE_ID_AND_MEDIA_ID")
  TOO_LONG = MediaErrorReason.new("TOO_LONG")
  UNSUPPORTED_OPERATION = MediaErrorReason.new("UNSUPPORTED_OPERATION")
  UNSUPPORTED_TYPE = MediaErrorReason.new("UNSUPPORTED_TYPE")
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

# PagingError.Reason
class PagingErrorReason < ::String
  NUMBER_OF_RESULTS_CANNOT_BE_NEGATIVE = PagingErrorReason.new("NUMBER_OF_RESULTS_CANNOT_BE_NEGATIVE")
  START_INDEX_CANNOT_BE_NEGATIVE = PagingErrorReason.new("START_INDEX_CANNOT_BE_NEGATIVE")
  UNKNOWN = PagingErrorReason.new("UNKNOWN")
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

# SizeLimitError.Reason
class SizeLimitErrorReason < ::String
  REQUEST_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("REQUEST_SIZE_LIMIT_EXCEEDED")
  RESPONSE_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("RESPONSE_SIZE_LIMIT_EXCEEDED")
  UNKNOWN = SizeLimitErrorReason.new("UNKNOWN")
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

# TemplateElementField.Type
class TemplateElementFieldType < ::String
  ADDRESS = TemplateElementFieldType.new("ADDRESS")
  AUDIO = TemplateElementFieldType.new("AUDIO")
  ENUM = TemplateElementFieldType.new("ENUM")
  IMAGE = TemplateElementFieldType.new("IMAGE")
  TEXT = TemplateElementFieldType.new("TEXT")
  URL = TemplateElementFieldType.new("URL")
  VIDEO = TemplateElementFieldType.new("VIDEO")
  VISIBLE_URL = TemplateElementFieldType.new("VISIBLE_URL")
end

# VideoType
class VideoType < ::String
  ADOBE = VideoType.new("ADOBE")
  QUICKTIME = VideoType.new("QUICKTIME")
  REALPLAYER = VideoType.new("REALPLAYER")
  WINDOWSMEDIA = VideoType.new("WINDOWSMEDIA")
end

# get
# - selector - AdwordsApi::V201003::AdGroupAdService::AdGroupAdSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201003::AdGroupAdService::AdGroupAdPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
# - operations - AdwordsApi::V201003::AdGroupAdService::AdGroupAdOperation
class Mutate #:nodoc: all
  attr_accessor :operations

  def initialize(operations = [])
    @operations = operations
  end
end

# mutateResponse
# - rval - AdwordsApi::V201003::AdGroupAdService::AdGroupAdReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
