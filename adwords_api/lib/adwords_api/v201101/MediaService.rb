require 'xsd/qname'

module AdwordsApi; module V201101; module MediaService


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

# Media_Size_DimensionsMapEntry
# - key - AdwordsApi::V201101::MediaService::MediaSize
# - value - AdwordsApi::V201101::MediaService::Dimensions
class Media_Size_DimensionsMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Media_Size_StringMapEntry
# - key - AdwordsApi::V201101::MediaService::MediaSize
# - value - SOAP::SOAPString
class Media_Size_StringMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# OrderBy
# - field - SOAP::SOAPString
# - sortOrder - AdwordsApi::V201101::MediaService::SortOrder
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
# - operator - AdwordsApi::V201101::MediaService::PredicateOperator
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

# Media
# - mediaId - SOAP::SOAPLong
# - type - AdwordsApi::V201101::MediaService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201101::MediaService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201101::MediaService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201101::MediaService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
class Media
  attr_accessor :mediaId
  attr_accessor :type
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :creationTime
  attr_accessor :media_Type

  def initialize(mediaId = nil, type = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, name = nil, fileSize = nil, creationTime = nil, media_Type = nil)
    @mediaId = mediaId
    @type = type
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @name = name
    @fileSize = fileSize
    @creationTime = creationTime
    @media_Type = media_Type
  end
end

# Audio
# - mediaId - SOAP::SOAPLong
# - type - AdwordsApi::V201101::MediaService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201101::MediaService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201101::MediaService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201101::MediaService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - durationMillis - SOAP::SOAPLong
# - streamingUrl - SOAP::SOAPString
# - readyToPlayOnTheWeb - SOAP::SOAPBoolean
class Audio < Media
  attr_accessor :mediaId
  attr_accessor :type
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :durationMillis
  attr_accessor :streamingUrl
  attr_accessor :readyToPlayOnTheWeb

  def initialize(mediaId = nil, type = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, name = nil, fileSize = nil, creationTime = nil, media_Type = nil, durationMillis = nil, streamingUrl = nil, readyToPlayOnTheWeb = nil)
    @mediaId = mediaId
    @type = type
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @name = name
    @fileSize = fileSize
    @creationTime = creationTime
    @media_Type = media_Type
    @durationMillis = durationMillis
    @streamingUrl = streamingUrl
    @readyToPlayOnTheWeb = readyToPlayOnTheWeb
  end
end

# Image
# - mediaId - SOAP::SOAPLong
# - type - AdwordsApi::V201101::MediaService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201101::MediaService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201101::MediaService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201101::MediaService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - data - SOAP::SOAPBase64
class Image < Media
  attr_accessor :mediaId
  attr_accessor :type
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :data

  def initialize(mediaId = nil, type = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, name = nil, fileSize = nil, creationTime = nil, media_Type = nil, data = nil)
    @mediaId = mediaId
    @type = type
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @name = name
    @fileSize = fileSize
    @creationTime = creationTime
    @media_Type = media_Type
    @data = data
  end
end

# Video
# - mediaId - SOAP::SOAPLong
# - type - AdwordsApi::V201101::MediaService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201101::MediaService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201101::MediaService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201101::MediaService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - creationTime - SOAP::SOAPString
# - media_Type - SOAP::SOAPString
# - durationMillis - SOAP::SOAPLong
# - streamingUrl - SOAP::SOAPString
# - readyToPlayOnTheWeb - SOAP::SOAPBoolean
# - industryStandardCommercialIdentifier - SOAP::SOAPString
# - advertisingId - SOAP::SOAPString
# - youTubeVideoIdString - SOAP::SOAPString
class Video < Media
  attr_accessor :mediaId
  attr_accessor :type
  attr_accessor :referenceId
  attr_accessor :dimensions
  attr_accessor :urls
  attr_accessor :mimeType
  attr_accessor :sourceUrl
  attr_accessor :name
  attr_accessor :fileSize
  attr_accessor :creationTime
  attr_accessor :media_Type
  attr_accessor :durationMillis
  attr_accessor :streamingUrl
  attr_accessor :readyToPlayOnTheWeb
  attr_accessor :industryStandardCommercialIdentifier
  attr_accessor :advertisingId
  attr_accessor :youTubeVideoIdString

  def initialize(mediaId = nil, type = nil, referenceId = nil, dimensions = [], urls = [], mimeType = nil, sourceUrl = nil, name = nil, fileSize = nil, creationTime = nil, media_Type = nil, durationMillis = nil, streamingUrl = nil, readyToPlayOnTheWeb = nil, industryStandardCommercialIdentifier = nil, advertisingId = nil, youTubeVideoIdString = nil)
    @mediaId = mediaId
    @type = type
    @referenceId = referenceId
    @dimensions = dimensions
    @urls = urls
    @mimeType = mimeType
    @sourceUrl = sourceUrl
    @name = name
    @fileSize = fileSize
    @creationTime = creationTime
    @media_Type = media_Type
    @durationMillis = durationMillis
    @streamingUrl = streamingUrl
    @readyToPlayOnTheWeb = readyToPlayOnTheWeb
    @industryStandardCommercialIdentifier = industryStandardCommercialIdentifier
    @advertisingId = advertisingId
    @youTubeVideoIdString = youTubeVideoIdString
  end
end

# MediaPage
# - entries - AdwordsApi::V201101::MediaService::Media
# - totalNumEntries - SOAP::SOAPInt
class MediaPage
  attr_accessor :entries
  attr_accessor :totalNumEntries

  def initialize(entries = [], totalNumEntries = nil)
    @entries = entries
    @totalNumEntries = totalNumEntries
  end
end

# Selector
# - fields - SOAP::SOAPString
# - predicates - AdwordsApi::V201101::MediaService::Predicate
# - dateRange - AdwordsApi::V201101::MediaService::DateRange
# - ordering - AdwordsApi::V201101::MediaService::OrderBy
# - paging - AdwordsApi::V201101::MediaService::Paging
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

# AudioError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::MediaService::AudioErrorReason
class AudioError < ApiError
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
# - reason - AdwordsApi::V201101::MediaService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::ClientTermsErrorReason
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

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::MediaService::EntityNotFoundReason
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

# ImageError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::MediaService::ImageErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::InternalApiErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::MediaErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::NewEntityCreationErrorReason
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

# NotWhitelistedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::MediaService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::NullErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::OperationAccessDeniedReason
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
# - reason - AdwordsApi::V201101::MediaService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::RangeErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::ReadOnlyErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::RequestErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::RequiredErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::SelectorErrorReason
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
# - reason - AdwordsApi::V201101::MediaService::SizeLimitErrorReason
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

# VideoError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201101::MediaService::VideoErrorReason
class VideoError < ApiError
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
# - reason - AdwordsApi::V201101::MediaService::DatabaseErrorReason
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
# - errors - AdwordsApi::V201101::MediaService::ApiError
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

# AudioError.Reason
class AudioErrorReason < ::String
  ERROR_GENERATING_STREAMING_URL = AudioErrorReason.new("ERROR_GENERATING_STREAMING_URL")
  ERROR_STORING_AUDIO = AudioErrorReason.new("ERROR_STORING_AUDIO")
  FILE_TOO_LARGE = AudioErrorReason.new("FILE_TOO_LARGE")
  INVALID_AUDIO = AudioErrorReason.new("INVALID_AUDIO")
  PROBLEM_READING_AUDIO_FILE = AudioErrorReason.new("PROBLEM_READING_AUDIO_FILE")
  UNSUPPORTED_AUDIO = AudioErrorReason.new("UNSUPPORTED_AUDIO")
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

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
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

# Media.MediaType
class MediaMediaType < ::String
  AUDIO = MediaMediaType.new("AUDIO")
  DYNAMIC_IMAGE = MediaMediaType.new("DYNAMIC_IMAGE")
  ICON = MediaMediaType.new("ICON")
  IMAGE = MediaMediaType.new("IMAGE")
  STANDARD_ICON = MediaMediaType.new("STANDARD_ICON")
  VIDEO = MediaMediaType.new("VIDEO")
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
  CANNOT_SELECT_STANDARD_ICON_WITH_OTHER_TYPES = MediaErrorReason.new("CANNOT_SELECT_STANDARD_ICON_WITH_OTHER_TYPES")
  DUPLICATE_MEDIA = MediaErrorReason.new("DUPLICATE_MEDIA")
  EMPTY_FIELD = MediaErrorReason.new("EMPTY_FIELD")
  ENTITY_REFERENCED_IN_MULTIPLE_OPS = MediaErrorReason.new("ENTITY_REFERENCED_IN_MULTIPLE_OPS")
  FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE = MediaErrorReason.new("FIELD_NOT_SUPPORTED_FOR_MEDIA_SUB_TYPE")
  INVALID_MEDIA_ID = MediaErrorReason.new("INVALID_MEDIA_ID")
  INVALID_MEDIA_SUB_TYPE = MediaErrorReason.new("INVALID_MEDIA_SUB_TYPE")
  INVALID_MEDIA_TYPE = MediaErrorReason.new("INVALID_MEDIA_TYPE")
  INVALID_REFERENCE_ID = MediaErrorReason.new("INVALID_REFERENCE_ID")
  INVALID_YOU_TUBE_ID = MediaErrorReason.new("INVALID_YOU_TUBE_ID")
  MEDIA_FAILED_TRANSCODING = MediaErrorReason.new("MEDIA_FAILED_TRANSCODING")
  MEDIA_TYPE_DOES_NOT_MATCH_OBJECT_TYPE = MediaErrorReason.new("MEDIA_TYPE_DOES_NOT_MATCH_OBJECT_TYPE")
  NO_FIELDS_SPECIFIED = MediaErrorReason.new("NO_FIELDS_SPECIFIED")
  NULL_REFERENCE_ID_AND_MEDIA_ID = MediaErrorReason.new("NULL_REFERENCE_ID_AND_MEDIA_ID")
  TOO_LONG = MediaErrorReason.new("TOO_LONG")
  UNSUPPORTED_OPERATION = MediaErrorReason.new("UNSUPPORTED_OPERATION")
  UNSUPPORTED_TYPE = MediaErrorReason.new("UNSUPPORTED_TYPE")
  YOU_TUBE_SERVICE_UNAVAILABLE = MediaErrorReason.new("YOU_TUBE_SERVICE_UNAVAILABLE")
  YOU_TUBE_VIDEO_NOT_FOUND = MediaErrorReason.new("YOU_TUBE_VIDEO_NOT_FOUND")
end

# NewEntityCreationError.Reason
class NewEntityCreationErrorReason < ::String
  CANNOT_SET_ID_FOR_ADD = NewEntityCreationErrorReason.new("CANNOT_SET_ID_FOR_ADD")
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

# SortOrder
class SortOrder < ::String
  ASCENDING = SortOrder.new("ASCENDING")
  DESCENDING = SortOrder.new("DESCENDING")
end

# VideoError.Reason
class VideoErrorReason < ::String
  BAD_REQUEST = VideoErrorReason.new("BAD_REQUEST")
  ERROR_GENERATING_STREAMING_URL = VideoErrorReason.new("ERROR_GENERATING_STREAMING_URL")
  FILE_TOO_LARGE = VideoErrorReason.new("FILE_TOO_LARGE")
  INVALID_AD_ID = VideoErrorReason.new("INVALID_AD_ID")
  INVALID_INPUT = VideoErrorReason.new("INVALID_INPUT")
  INVALID_ISCI = VideoErrorReason.new("INVALID_ISCI")
  INVALID_VIDEO = VideoErrorReason.new("INVALID_VIDEO")
  PROBLEM_READING_FILE = VideoErrorReason.new("PROBLEM_READING_FILE")
  SERVER_ERROR = VideoErrorReason.new("SERVER_ERROR")
  STORAGE_ERROR = VideoErrorReason.new("STORAGE_ERROR")
  UNEXPECTED_SIZE = VideoErrorReason.new("UNEXPECTED_SIZE")
  VIDEO_PROCESSING_ERROR = VideoErrorReason.new("VIDEO_PROCESSING_ERROR")
end

# get
# - serviceSelector - AdwordsApi::V201101::MediaService::Selector
class Get #:nodoc: all
  attr_accessor :serviceSelector

  def initialize(serviceSelector = nil)
    @serviceSelector = serviceSelector
  end
end

# getResponse
# - rval - AdwordsApi::V201101::MediaService::MediaPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# upload
# - media - AdwordsApi::V201101::MediaService::Media
class Upload #:nodoc: all
  attr_accessor :media

  def initialize(media = [])
    @media = media
  end
end

# uploadResponse
# - rval - AdwordsApi::V201101::MediaService::Media
class UploadResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = [])
    @rval = rval
  end
end


end; end; end
