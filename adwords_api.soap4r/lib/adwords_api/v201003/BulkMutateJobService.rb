require 'xsd/qname'

module AdwordsApi; module V201003; module BulkMutateJobService


# Ad
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
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
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - type - AdwordsApi::V201003::BulkMutateJobService::DeprecatedAdType
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

# ImageAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - image - AdwordsApi::V201003::BulkMutateJobService::Image
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
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
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
# - target - AdwordsApi::V201003::BulkMutateJobService::ProximityTarget
# - businessImage - AdwordsApi::V201003::BulkMutateJobService::Image
# - icon - AdwordsApi::V201003::BulkMutateJobService::Image
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

# MobileAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - headline - SOAP::SOAPString
# - description - SOAP::SOAPString
# - markupLanguages - AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType
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

# MobileImageAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - markupLanguages - AdwordsApi::V201003::BulkMutateJobService::MarkupLanguageType
# - mobileCarriers - SOAP::SOAPString
# - image - AdwordsApi::V201003::BulkMutateJobService::Image
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
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Dimensions
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
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - name - SOAP::SOAPString
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Dimensions
# - snippet - SOAP::SOAPString
# - impressionBeaconUrl - SOAP::SOAPString
# - certifiedVendorFormatId - SOAP::SOAPLong
# - isCookieTargeted - SOAP::SOAPBoolean
# - isUserInterestTargeted - SOAP::SOAPBoolean
# - isTagged - SOAP::SOAPBoolean
# - videoTypes - AdwordsApi::V201003::BulkMutateJobService::VideoType
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

# TemplateAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
# - disapprovalReasons - SOAP::SOAPString
# - trademarkDisapproved - SOAP::SOAPBoolean
# - ad_Type - SOAP::SOAPString
# - templateId - SOAP::SOAPLong
# - adUnionId - AdwordsApi::V201003::BulkMutateJobService::AdUnionId
# - templateElements - AdwordsApi::V201003::BulkMutateJobService::TemplateElement
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Dimensions
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

# TextAd
# - id - SOAP::SOAPLong
# - url - SOAP::SOAPString
# - displayUrl - SOAP::SOAPString
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdApprovalStatus
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

# AdExtension
# - id - SOAP::SOAPLong
# - adExtension_Type - SOAP::SOAPString
class AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type

  def initialize(id = nil, adExtension_Type = nil)
    @id = id
    @adExtension_Type = adExtension_Type
  end
end

# LocationExtension
# - id - SOAP::SOAPLong
# - adExtension_Type - SOAP::SOAPString
# - address - AdwordsApi::V201003::BulkMutateJobService::Address
# - geoPoint - AdwordsApi::V201003::BulkMutateJobService::GeoPoint
# - encodedLocation - SOAP::SOAPBase64
# - companyName - SOAP::SOAPString
# - phoneNumber - SOAP::SOAPString
# - source - AdwordsApi::V201003::BulkMutateJobService::LocationExtensionSource
# - iconMediaId - SOAP::SOAPLong
# - imageMediaId - SOAP::SOAPLong
class LocationExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :address
  attr_accessor :geoPoint
  attr_accessor :encodedLocation
  attr_accessor :companyName
  attr_accessor :phoneNumber
  attr_accessor :source
  attr_accessor :iconMediaId
  attr_accessor :imageMediaId

  def initialize(id = nil, adExtension_Type = nil, address = nil, geoPoint = nil, encodedLocation = nil, companyName = nil, phoneNumber = nil, source = nil, iconMediaId = nil, imageMediaId = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @address = address
    @geoPoint = geoPoint
    @encodedLocation = encodedLocation
    @companyName = companyName
    @phoneNumber = phoneNumber
    @source = source
    @iconMediaId = iconMediaId
    @imageMediaId = imageMediaId
  end
end

# LocationSyncExtension
# - id - SOAP::SOAPLong
# - adExtension_Type - SOAP::SOAPString
# - email - SOAP::SOAPString
# - authToken - SOAP::SOAPString
# - iconMediaId - SOAP::SOAPLong
# - shouldSyncUrl - SOAP::SOAPBoolean
class LocationSyncExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :email
  attr_accessor :authToken
  attr_accessor :iconMediaId
  attr_accessor :shouldSyncUrl

  def initialize(id = nil, adExtension_Type = nil, email = nil, authToken = nil, iconMediaId = nil, shouldSyncUrl = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @email = email
    @authToken = authToken
    @iconMediaId = iconMediaId
    @shouldSyncUrl = shouldSyncUrl
  end
end

# MobileExtension
# - id - SOAP::SOAPLong
# - adExtension_Type - SOAP::SOAPString
# - phoneNumber - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
class MobileExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :phoneNumber
  attr_accessor :countryCode

  def initialize(id = nil, adExtension_Type = nil, phoneNumber = nil, countryCode = nil)
    @id = id
    @adExtension_Type = adExtension_Type
    @phoneNumber = phoneNumber
    @countryCode = countryCode
  end
end

# SitelinksExtension
# - id - SOAP::SOAPLong
# - adExtension_Type - SOAP::SOAPString
# - sitelinks - AdwordsApi::V201003::BulkMutateJobService::Sitelink
class SitelinksExtension < AdExtension
  attr_accessor :id
  attr_accessor :adExtension_Type
  attr_accessor :sitelinks

  def initialize(id = nil, adExtension_Type = nil, sitelinks = [])
    @id = id
    @adExtension_Type = adExtension_Type
    @sitelinks = sitelinks
  end
end

# AdExtensionOverride
# - adId - SOAP::SOAPLong
# - adExtension - AdwordsApi::V201003::BulkMutateJobService::AdExtension
# - overrideInfo - AdwordsApi::V201003::BulkMutateJobService::OverrideInfo
# - status - AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStatus
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideApprovalStatus
# - stats - AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverrideStats
class AdExtensionOverride
  attr_accessor :adId
  attr_accessor :adExtension
  attr_accessor :overrideInfo
  attr_accessor :status
  attr_accessor :approvalStatus
  attr_accessor :stats

  def initialize(adId = nil, adExtension = nil, overrideInfo = nil, status = nil, approvalStatus = nil, stats = nil)
    @adId = adId
    @adExtension = adExtension
    @overrideInfo = overrideInfo
    @status = status
    @approvalStatus = approvalStatus
    @stats = stats
  end
end

# AdGroup
# - id - SOAP::SOAPLong
# - campaignId - SOAP::SOAPLong
# - campaignName - SOAP::SOAPString
# - name - SOAP::SOAPString
# - status - AdwordsApi::V201003::BulkMutateJobService::AdGroupStatus
# - bids - AdwordsApi::V201003::BulkMutateJobService::AdGroupBids
# - stats - AdwordsApi::V201003::BulkMutateJobService::Stats
class AdGroup
  attr_accessor :id
  attr_accessor :campaignId
  attr_accessor :campaignName
  attr_accessor :name
  attr_accessor :status
  attr_accessor :bids
  attr_accessor :stats

  def initialize(id = nil, campaignId = nil, campaignName = nil, name = nil, status = nil, bids = nil, stats = nil)
    @id = id
    @campaignId = campaignId
    @campaignName = campaignName
    @name = name
    @status = status
    @bids = bids
    @stats = stats
  end
end

# AdGroupAd
# - adGroupId - SOAP::SOAPLong
# - ad - AdwordsApi::V201003::BulkMutateJobService::Ad
# - status - AdwordsApi::V201003::BulkMutateJobService::AdGroupAdStatus
# - stats - AdwordsApi::V201003::BulkMutateJobService::AdStats
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

# AdGroupBids
# abstract
# - adGroupBids_Type - SOAP::SOAPString
class AdGroupBids
  attr_accessor :adGroupBids_Type

  def initialize(adGroupBids_Type = nil)
    @adGroupBids_Type = adGroupBids_Type
  end
end

# BudgetOptimizerAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - proxyKeywordMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - proxySiteMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
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
# - targetCpa - AdwordsApi::V201003::BulkMutateJobService::Bid
# - conversionOptimizerBidType - AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType
# - deduplicationMode - AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode
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
# - keywordMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - keywordContentMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - siteMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
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
# - maxCpm - AdwordsApi::V201003::BulkMutateJobService::Bid
class ManualCPMAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :maxCpm

  def initialize(adGroupBids_Type = nil, maxCpm = nil)
    @adGroupBids_Type = adGroupBids_Type
    @maxCpm = maxCpm
  end
end

# AdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdwordsApi::V201003::BulkMutateJobService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
class AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# BiddableAdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdwordsApi::V201003::BulkMutateJobService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
# - userStatus - AdwordsApi::V201003::BulkMutateJobService::UserStatus
# - systemServingStatus - AdwordsApi::V201003::BulkMutateJobService::SystemServingStatus
# - approvalStatus - AdwordsApi::V201003::BulkMutateJobService::ApprovalStatus
# - destinationUrl - SOAP::SOAPString
# - bids - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionBids
# - firstPageCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - qualityInfo - AdwordsApi::V201003::BulkMutateJobService::QualityInfo
# - stats - AdwordsApi::V201003::BulkMutateJobService::Stats
class BiddableAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type
  attr_accessor :userStatus
  attr_accessor :systemServingStatus
  attr_accessor :approvalStatus
  attr_accessor :destinationUrl
  attr_accessor :bids
  attr_accessor :firstPageCpc
  attr_accessor :qualityInfo
  attr_accessor :stats

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil, userStatus = nil, systemServingStatus = nil, approvalStatus = nil, destinationUrl = nil, bids = nil, firstPageCpc = nil, qualityInfo = nil, stats = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
    @userStatus = userStatus
    @systemServingStatus = systemServingStatus
    @approvalStatus = approvalStatus
    @destinationUrl = destinationUrl
    @bids = bids
    @firstPageCpc = firstPageCpc
    @qualityInfo = qualityInfo
    @stats = stats
  end
end

# NegativeAdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdwordsApi::V201003::BulkMutateJobService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
class NegativeAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# AdGroupCriterionBids
# abstract
# - adGroupCriterionBids_Type - SOAP::SOAPString
class AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# BudgetOptimizerAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - proxyBid - AdwordsApi::V201003::BulkMutateJobService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class BudgetOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :proxyBid
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupCriterionBids_Type = nil, proxyBid = nil, enhancedCpcEnabled = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @proxyBid = proxyBid
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ConversionOptimizerAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
class ConversionOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# ManualCPCAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - maxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - bidSource - AdwordsApi::V201003::BulkMutateJobService::BidSource
# - positionPreferenceBids - AdwordsApi::V201003::BulkMutateJobService::PositionPreferenceAdGroupCriterionBids
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class ManualCPCAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpc
  attr_accessor :bidSource
  attr_accessor :positionPreferenceBids
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupCriterionBids_Type = nil, maxCpc = nil, bidSource = nil, positionPreferenceBids = nil, enhancedCpcEnabled = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpc = maxCpc
    @bidSource = bidSource
    @positionPreferenceBids = positionPreferenceBids
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ManualCPMAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - maxCpm - AdwordsApi::V201003::BulkMutateJobService::Bid
# - bidSource - AdwordsApi::V201003::BulkMutateJobService::BidSource
class ManualCPMAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpm
  attr_accessor :bidSource

  def initialize(adGroupCriterionBids_Type = nil, maxCpm = nil, bidSource = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpm = maxCpm
    @bidSource = bidSource
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::AdErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason
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

# AdGroupCriterionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason
class AdGroupCriterionError < ApiError
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

# AdGroupServiceError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason
class AdGroupServiceError < ApiError
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason
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

# BiddingTransitionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason
class BiddingTransitionError < ApiError
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason
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

# BulkMutateJobError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason
class BulkMutateJobError < ApiError
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

# CampaignCriterionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason
class CampaignCriterionError < ApiError
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason
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

# DateError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::DateErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason
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

# EntityCountLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason
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

# AdGroupCriterionLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
# - limitType - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionLimitExceededCriteriaLimitType
class AdGroupCriterionLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit
  attr_accessor :limitType

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil, limitType = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
    @limitType = limitType
  end
end

# CampaignCriterionLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
# - limitType - AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionLimitExceededCriteriaLimitType
class CampaignCriterionLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit
  attr_accessor :limitType

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil, limitType = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
    @limitType = limitType
  end
end

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::IdErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason
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

# JobError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::JobErrorReason
class JobError < ApiError
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::NullErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason
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

# PagingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason
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

# PolicyViolationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart
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

# CriterionPolicyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorPart
class CriterionPolicyError < PolicyViolationError
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

# QuotaCheckError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason
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

# StringLengthError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason
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
# - reason - AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason
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

# ApiErrorReason
# - adErrorReason - AdwordsApi::V201003::BulkMutateJobService::AdErrorReason
# - adGroupAdErrorReason - AdwordsApi::V201003::BulkMutateJobService::AdGroupAdErrorReason
# - adGroupCriterionErrorReason - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterionErrorReason
# - adGroupServiceErrorReason - AdwordsApi::V201003::BulkMutateJobService::AdGroupServiceErrorReason
# - authenticationErrorReason - AdwordsApi::V201003::BulkMutateJobService::AuthenticationErrorReason
# - authorizationErrorReason - AdwordsApi::V201003::BulkMutateJobService::AuthorizationErrorReason
# - biddingErrorReason - AdwordsApi::V201003::BulkMutateJobService::BiddingErrorReason
# - biddingTransitionErrorReason - AdwordsApi::V201003::BulkMutateJobService::BiddingTransitionErrorReason
# - budgetErrorReason - AdwordsApi::V201003::BulkMutateJobService::BudgetErrorReason
# - bulkMutateJobErrorReason - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobErrorReason
# - campaignCriterionErrorReason - AdwordsApi::V201003::BulkMutateJobService::CampaignCriterionErrorReason
# - campaignErrorReason - AdwordsApi::V201003::BulkMutateJobService::CampaignErrorReason
# - clientTermsErrorReason - AdwordsApi::V201003::BulkMutateJobService::ClientTermsErrorReason
# - databaseErrorReason - AdwordsApi::V201003::BulkMutateJobService::DatabaseErrorReason
# - dateErrorReason - AdwordsApi::V201003::BulkMutateJobService::DateErrorReason
# - distinctErrorReason - AdwordsApi::V201003::BulkMutateJobService::DistinctErrorReason
# - entityAccessDeniedReason - AdwordsApi::V201003::BulkMutateJobService::EntityAccessDeniedReason
# - entityCountLimitExceededReason - AdwordsApi::V201003::BulkMutateJobService::EntityCountLimitExceededReason
# - entityNotFoundReason - AdwordsApi::V201003::BulkMutateJobService::EntityNotFoundReason
# - idErrorReason - AdwordsApi::V201003::BulkMutateJobService::IdErrorReason
# - imageErrorReason - AdwordsApi::V201003::BulkMutateJobService::ImageErrorReason
# - internalApiErrorReason - AdwordsApi::V201003::BulkMutateJobService::InternalApiErrorReason
# - jobErrorReason - AdwordsApi::V201003::BulkMutateJobService::JobErrorReason
# - loasAuthenticationErrorReason - AdwordsApi::V201003::BulkMutateJobService::LoasAuthenticationErrorReason
# - mediaErrorReason - AdwordsApi::V201003::BulkMutateJobService::MediaErrorReason
# - newEntityCreationErrorReason - AdwordsApi::V201003::BulkMutateJobService::NewEntityCreationErrorReason
# - notEmptyErrorReason - AdwordsApi::V201003::BulkMutateJobService::NotEmptyErrorReason
# - notWhitelistedErrorReason - AdwordsApi::V201003::BulkMutateJobService::NotWhitelistedErrorReason
# - nullErrorReason - AdwordsApi::V201003::BulkMutateJobService::NullErrorReason
# - operationAccessDeniedReason - AdwordsApi::V201003::BulkMutateJobService::OperationAccessDeniedReason
# - operatorErrorReason - AdwordsApi::V201003::BulkMutateJobService::OperatorErrorReason
# - pagingErrorReason - AdwordsApi::V201003::BulkMutateJobService::PagingErrorReason
# - policyViolationErrorReason - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationErrorReason
# - quotaCheckErrorReason - AdwordsApi::V201003::BulkMutateJobService::QuotaCheckErrorReason
# - quotaErrorReason - AdwordsApi::V201003::BulkMutateJobService::QuotaErrorReason
# - quotaExceededErrorReason - AdwordsApi::V201003::BulkMutateJobService::QuotaExceededErrorReason
# - rangeErrorReason - AdwordsApi::V201003::BulkMutateJobService::RangeErrorReason
# - rateExceededErrorReason - AdwordsApi::V201003::BulkMutateJobService::RateExceededErrorReason
# - readOnlyErrorReason - AdwordsApi::V201003::BulkMutateJobService::ReadOnlyErrorReason
# - regionCodeErrorReason - AdwordsApi::V201003::BulkMutateJobService::RegionCodeErrorReason
# - rejectedErrorReason - AdwordsApi::V201003::BulkMutateJobService::RejectedErrorReason
# - requestErrorReason - AdwordsApi::V201003::BulkMutateJobService::RequestErrorReason
# - requiredErrorReason - AdwordsApi::V201003::BulkMutateJobService::RequiredErrorReason
# - sizeLimitErrorReason - AdwordsApi::V201003::BulkMutateJobService::SizeLimitErrorReason
# - statsQueryErrorReason - AdwordsApi::V201003::BulkMutateJobService::StatsQueryErrorReason
# - stringLengthErrorReason - AdwordsApi::V201003::BulkMutateJobService::StringLengthErrorReason
# - targetErrorReason - AdwordsApi::V201003::BulkMutateJobService::TargetErrorReason
class ApiErrorReason
  attr_accessor :adErrorReason
  attr_accessor :adGroupAdErrorReason
  attr_accessor :adGroupCriterionErrorReason
  attr_accessor :adGroupServiceErrorReason
  attr_accessor :authenticationErrorReason
  attr_accessor :authorizationErrorReason
  attr_accessor :biddingErrorReason
  attr_accessor :biddingTransitionErrorReason
  attr_accessor :budgetErrorReason
  attr_accessor :bulkMutateJobErrorReason
  attr_accessor :campaignCriterionErrorReason
  attr_accessor :campaignErrorReason
  attr_accessor :clientTermsErrorReason
  attr_accessor :databaseErrorReason
  attr_accessor :dateErrorReason
  attr_accessor :distinctErrorReason
  attr_accessor :entityAccessDeniedReason
  attr_accessor :entityCountLimitExceededReason
  attr_accessor :entityNotFoundReason
  attr_accessor :idErrorReason
  attr_accessor :imageErrorReason
  attr_accessor :internalApiErrorReason
  attr_accessor :jobErrorReason
  attr_accessor :loasAuthenticationErrorReason
  attr_accessor :mediaErrorReason
  attr_accessor :newEntityCreationErrorReason
  attr_accessor :notEmptyErrorReason
  attr_accessor :notWhitelistedErrorReason
  attr_accessor :nullErrorReason
  attr_accessor :operationAccessDeniedReason
  attr_accessor :operatorErrorReason
  attr_accessor :pagingErrorReason
  attr_accessor :policyViolationErrorReason
  attr_accessor :quotaCheckErrorReason
  attr_accessor :quotaErrorReason
  attr_accessor :quotaExceededErrorReason
  attr_accessor :rangeErrorReason
  attr_accessor :rateExceededErrorReason
  attr_accessor :readOnlyErrorReason
  attr_accessor :regionCodeErrorReason
  attr_accessor :rejectedErrorReason
  attr_accessor :requestErrorReason
  attr_accessor :requiredErrorReason
  attr_accessor :sizeLimitErrorReason
  attr_accessor :statsQueryErrorReason
  attr_accessor :stringLengthErrorReason
  attr_accessor :targetErrorReason

  def initialize(adErrorReason = nil, adGroupAdErrorReason = nil, adGroupCriterionErrorReason = nil, adGroupServiceErrorReason = nil, authenticationErrorReason = nil, authorizationErrorReason = nil, biddingErrorReason = nil, biddingTransitionErrorReason = nil, budgetErrorReason = nil, bulkMutateJobErrorReason = nil, campaignCriterionErrorReason = nil, campaignErrorReason = nil, clientTermsErrorReason = nil, databaseErrorReason = nil, dateErrorReason = nil, distinctErrorReason = nil, entityAccessDeniedReason = nil, entityCountLimitExceededReason = nil, entityNotFoundReason = nil, idErrorReason = nil, imageErrorReason = nil, internalApiErrorReason = nil, jobErrorReason = nil, loasAuthenticationErrorReason = nil, mediaErrorReason = nil, newEntityCreationErrorReason = nil, notEmptyErrorReason = nil, notWhitelistedErrorReason = nil, nullErrorReason = nil, operationAccessDeniedReason = nil, operatorErrorReason = nil, pagingErrorReason = nil, policyViolationErrorReason = nil, quotaCheckErrorReason = nil, quotaErrorReason = nil, quotaExceededErrorReason = nil, rangeErrorReason = nil, rateExceededErrorReason = nil, readOnlyErrorReason = nil, regionCodeErrorReason = nil, rejectedErrorReason = nil, requestErrorReason = nil, requiredErrorReason = nil, sizeLimitErrorReason = nil, statsQueryErrorReason = nil, stringLengthErrorReason = nil, targetErrorReason = nil)
    @adErrorReason = adErrorReason
    @adGroupAdErrorReason = adGroupAdErrorReason
    @adGroupCriterionErrorReason = adGroupCriterionErrorReason
    @adGroupServiceErrorReason = adGroupServiceErrorReason
    @authenticationErrorReason = authenticationErrorReason
    @authorizationErrorReason = authorizationErrorReason
    @biddingErrorReason = biddingErrorReason
    @biddingTransitionErrorReason = biddingTransitionErrorReason
    @budgetErrorReason = budgetErrorReason
    @bulkMutateJobErrorReason = bulkMutateJobErrorReason
    @campaignCriterionErrorReason = campaignCriterionErrorReason
    @campaignErrorReason = campaignErrorReason
    @clientTermsErrorReason = clientTermsErrorReason
    @databaseErrorReason = databaseErrorReason
    @dateErrorReason = dateErrorReason
    @distinctErrorReason = distinctErrorReason
    @entityAccessDeniedReason = entityAccessDeniedReason
    @entityCountLimitExceededReason = entityCountLimitExceededReason
    @entityNotFoundReason = entityNotFoundReason
    @idErrorReason = idErrorReason
    @imageErrorReason = imageErrorReason
    @internalApiErrorReason = internalApiErrorReason
    @jobErrorReason = jobErrorReason
    @loasAuthenticationErrorReason = loasAuthenticationErrorReason
    @mediaErrorReason = mediaErrorReason
    @newEntityCreationErrorReason = newEntityCreationErrorReason
    @notEmptyErrorReason = notEmptyErrorReason
    @notWhitelistedErrorReason = notWhitelistedErrorReason
    @nullErrorReason = nullErrorReason
    @operationAccessDeniedReason = operationAccessDeniedReason
    @operatorErrorReason = operatorErrorReason
    @pagingErrorReason = pagingErrorReason
    @policyViolationErrorReason = policyViolationErrorReason
    @quotaCheckErrorReason = quotaCheckErrorReason
    @quotaErrorReason = quotaErrorReason
    @quotaExceededErrorReason = quotaExceededErrorReason
    @rangeErrorReason = rangeErrorReason
    @rateExceededErrorReason = rateExceededErrorReason
    @readOnlyErrorReason = readOnlyErrorReason
    @regionCodeErrorReason = regionCodeErrorReason
    @rejectedErrorReason = rejectedErrorReason
    @requestErrorReason = requestErrorReason
    @requiredErrorReason = requiredErrorReason
    @sizeLimitErrorReason = sizeLimitErrorReason
    @statsQueryErrorReason = statsQueryErrorReason
    @stringLengthErrorReason = stringLengthErrorReason
    @targetErrorReason = targetErrorReason
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
# - errors - AdwordsApi::V201003::BulkMutateJobService::ApiError
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
# - amount - AdwordsApi::V201003::BulkMutateJobService::Money
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# BiddingStrategy
# abstract
# - biddingStrategy_Type - SOAP::SOAPString
class BiddingStrategy
  attr_accessor :biddingStrategy_Type

  def initialize(biddingStrategy_Type = nil)
    @biddingStrategy_Type = biddingStrategy_Type
  end
end

# BudgetOptimizer
# - biddingStrategy_Type - SOAP::SOAPString
# - bidCeiling - AdwordsApi::V201003::BulkMutateJobService::Money
class BudgetOptimizer < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :bidCeiling

  def initialize(biddingStrategy_Type = nil, bidCeiling = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @bidCeiling = bidCeiling
  end
end

# ConversionOptimizer
# - biddingStrategy_Type - SOAP::SOAPString
# - pricingModel - AdwordsApi::V201003::BulkMutateJobService::PricingModel
# - conversionOptimizerBidType - AdwordsApi::V201003::BulkMutateJobService::ConversionOptimizerBidType
# - deduplicationMode - AdwordsApi::V201003::BulkMutateJobService::ConversionDeduplicationMode
class ConversionOptimizer < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :pricingModel
  attr_accessor :conversionOptimizerBidType
  attr_accessor :deduplicationMode

  def initialize(biddingStrategy_Type = nil, pricingModel = nil, conversionOptimizerBidType = nil, deduplicationMode = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @pricingModel = pricingModel
    @conversionOptimizerBidType = conversionOptimizerBidType
    @deduplicationMode = deduplicationMode
  end
end

# ManualCPC
# - biddingStrategy_Type - SOAP::SOAPString
# - positionPreference - AdwordsApi::V201003::BulkMutateJobService::PositionPreference
class ManualCPC < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :positionPreference

  def initialize(biddingStrategy_Type = nil, positionPreference = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @positionPreference = positionPreference
  end
end

# ManualCPM
# - biddingStrategy_Type - SOAP::SOAPString
class ManualCPM < BiddingStrategy
  attr_accessor :biddingStrategy_Type

  def initialize(biddingStrategy_Type = nil)
    @biddingStrategy_Type = biddingStrategy_Type
  end
end

# BiddingTransition
# - targetBiddingStrategy - AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy
# - explicitAdGroupBids - AdwordsApi::V201003::BulkMutateJobService::AdGroupBids
# - biddingTransition_Type - SOAP::SOAPString
class BiddingTransition
  attr_accessor :targetBiddingStrategy
  attr_accessor :explicitAdGroupBids
  attr_accessor :biddingTransition_Type

  def initialize(targetBiddingStrategy = nil, explicitAdGroupBids = nil, biddingTransition_Type = nil)
    @targetBiddingStrategy = targetBiddingStrategy
    @explicitAdGroupBids = explicitAdGroupBids
    @biddingTransition_Type = biddingTransition_Type
  end
end

# ConversionOptimizerBiddingTransition
# - targetBiddingStrategy - AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy
# - explicitAdGroupBids - AdwordsApi::V201003::BulkMutateJobService::AdGroupBids
# - biddingTransition_Type - SOAP::SOAPString
# - useSavedBids - SOAP::SOAPBoolean
class ConversionOptimizerBiddingTransition < BiddingTransition
  attr_accessor :targetBiddingStrategy
  attr_accessor :explicitAdGroupBids
  attr_accessor :biddingTransition_Type
  attr_accessor :useSavedBids

  def initialize(targetBiddingStrategy = nil, explicitAdGroupBids = nil, biddingTransition_Type = nil, useSavedBids = nil)
    @targetBiddingStrategy = targetBiddingStrategy
    @explicitAdGroupBids = explicitAdGroupBids
    @biddingTransition_Type = biddingTransition_Type
    @useSavedBids = useSavedBids
  end
end

# BillingSummary
# - numOperations - SOAP::SOAPInt
# - numUnits - SOAP::SOAPLong
class BillingSummary
  attr_accessor :numOperations
  attr_accessor :numUnits

  def initialize(numOperations = nil, numUnits = nil)
    @numOperations = numOperations
    @numUnits = numUnits
  end
end

# Budget
# - period - AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetPeriod
# - amount - AdwordsApi::V201003::BulkMutateJobService::Money
# - deliveryMethod - AdwordsApi::V201003::BulkMutateJobService::BudgetBudgetDeliveryMethod
class Budget
  attr_accessor :period
  attr_accessor :amount
  attr_accessor :deliveryMethod

  def initialize(period = nil, amount = nil, deliveryMethod = nil)
    @period = period
    @amount = amount
    @deliveryMethod = deliveryMethod
  end
end

# BulkMutateJobPolicy
# - prerequisiteJobIds - SOAP::SOAPLong
class BulkMutateJobPolicy
  attr_accessor :prerequisiteJobIds

  def initialize(prerequisiteJobIds = [])
    @prerequisiteJobIds = prerequisiteJobIds
  end
end

# BulkMutateRequest
# - partIndex - SOAP::SOAPInt
# - operationStreams - AdwordsApi::V201003::BulkMutateJobService::OperationStream
class BulkMutateRequest
  attr_accessor :partIndex
  attr_accessor :operationStreams

  def initialize(partIndex = nil, operationStreams = [])
    @partIndex = partIndex
    @operationStreams = operationStreams
  end
end

# BulkMutateResult
# - partIndex - SOAP::SOAPInt
# - operationStreamResults - AdwordsApi::V201003::BulkMutateJobService::OperationStreamResult
class BulkMutateResult
  attr_accessor :partIndex
  attr_accessor :operationStreamResults

  def initialize(partIndex = nil, operationStreamResults = [])
    @partIndex = partIndex
    @operationStreamResults = operationStreamResults
  end
end

# Campaign
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - status - AdwordsApi::V201003::BulkMutateJobService::CampaignStatus
# - servingStatus - AdwordsApi::V201003::BulkMutateJobService::ServingStatus
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - budget - AdwordsApi::V201003::BulkMutateJobService::Budget
# - biddingStrategy - AdwordsApi::V201003::BulkMutateJobService::BiddingStrategy
# - autoKeywordMatchingStatus - AdwordsApi::V201003::BulkMutateJobService::AutoKeywordMatchingStatus
# - campaignStats - AdwordsApi::V201003::BulkMutateJobService::CampaignStats
# - adServingOptimizationStatus - AdwordsApi::V201003::BulkMutateJobService::AdServingOptimizationStatus
# - frequencyCap - AdwordsApi::V201003::BulkMutateJobService::FrequencyCap
class Campaign
  attr_accessor :id
  attr_accessor :name
  attr_accessor :status
  attr_accessor :servingStatus
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :budget
  attr_accessor :biddingStrategy
  attr_accessor :autoKeywordMatchingStatus
  attr_accessor :campaignStats
  attr_accessor :adServingOptimizationStatus
  attr_accessor :frequencyCap

  def initialize(id = nil, name = nil, status = nil, servingStatus = nil, startDate = nil, endDate = nil, budget = nil, biddingStrategy = nil, autoKeywordMatchingStatus = nil, campaignStats = nil, adServingOptimizationStatus = nil, frequencyCap = nil)
    @id = id
    @name = name
    @status = status
    @servingStatus = servingStatus
    @startDate = startDate
    @endDate = endDate
    @budget = budget
    @biddingStrategy = biddingStrategy
    @autoKeywordMatchingStatus = autoKeywordMatchingStatus
    @campaignStats = campaignStats
    @adServingOptimizationStatus = adServingOptimizationStatus
    @frequencyCap = frequencyCap
  end
end

# CampaignCriterion
# - campaignId - SOAP::SOAPLong
# - criterion - AdwordsApi::V201003::BulkMutateJobService::Criterion
# - campaignCriterion_Type - SOAP::SOAPString
class CampaignCriterion
  attr_accessor :campaignId
  attr_accessor :criterion
  attr_accessor :campaignCriterion_Type

  def initialize(campaignId = nil, criterion = nil, campaignCriterion_Type = nil)
    @campaignId = campaignId
    @criterion = criterion
    @campaignCriterion_Type = campaignCriterion_Type
  end
end

# NegativeCampaignCriterion
# - campaignId - SOAP::SOAPLong
# - criterion - AdwordsApi::V201003::BulkMutateJobService::Criterion
# - campaignCriterion_Type - SOAP::SOAPString
class NegativeCampaignCriterion < CampaignCriterion
  attr_accessor :campaignId
  attr_accessor :criterion
  attr_accessor :campaignCriterion_Type

  def initialize(campaignId = nil, criterion = nil, campaignCriterion_Type = nil)
    @campaignId = campaignId
    @criterion = criterion
    @campaignCriterion_Type = campaignCriterion_Type
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

# ContentLabel
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - contentLabelType - AdwordsApi::V201003::BulkMutateJobService::ContentLabelType
class ContentLabel < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :contentLabelType

  def initialize(id = nil, criterion_Type = nil, contentLabelType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @contentLabelType = contentLabelType
  end
end

# Keyword
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - text - SOAP::SOAPString
# - matchType - AdwordsApi::V201003::BulkMutateJobService::KeywordMatchType
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

# EntityId
# - type - AdwordsApi::V201003::BulkMutateJobService::EntityIdType
# - value - SOAP::SOAPLong
class EntityId
  attr_accessor :type
  attr_accessor :value

  def initialize(type = nil, value = nil)
    @type = type
    @value = value
  end
end

# ExemptionRequest
# - key - AdwordsApi::V201003::BulkMutateJobService::PolicyViolationKey
class ExemptionRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# FrequencyCap
# - impressions - SOAP::SOAPLong
# - timeUnit - AdwordsApi::V201003::BulkMutateJobService::TimeUnit
# - level - AdwordsApi::V201003::BulkMutateJobService::Level
class FrequencyCap
  attr_accessor :impressions
  attr_accessor :timeUnit
  attr_accessor :level

  def initialize(impressions = nil, timeUnit = nil, level = nil)
    @impressions = impressions
    @timeUnit = timeUnit
    @level = level
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

# Job
# abstract
# - customerJobKey - SOAP::SOAPString
# - context - AdwordsApi::V201003::BulkMutateJobService::JobContext
# - failureReason - AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason
# - stats - AdwordsApi::V201003::BulkMutateJobService::JobStats
# - billingSummary - AdwordsApi::V201003::BulkMutateJobService::BillingSummary
# - job_Type - SOAP::SOAPString
class Job
  attr_accessor :customerJobKey
  attr_accessor :context
  attr_accessor :failureReason
  attr_accessor :stats
  attr_accessor :billingSummary
  attr_accessor :job_Type

  def initialize(customerJobKey = nil, context = nil, failureReason = nil, stats = nil, billingSummary = nil, job_Type = nil)
    @customerJobKey = customerJobKey
    @context = context
    @failureReason = failureReason
    @stats = stats
    @billingSummary = billingSummary
    @job_Type = job_Type
  end
end

# BulkMutateJob
# - customerJobKey - SOAP::SOAPString
# - context - AdwordsApi::V201003::BulkMutateJobService::JobContext
# - failureReason - AdwordsApi::V201003::BulkMutateJobService::ApiErrorReason
# - stats - AdwordsApi::V201003::BulkMutateJobService::JobStats
# - billingSummary - AdwordsApi::V201003::BulkMutateJobService::BillingSummary
# - job_Type - SOAP::SOAPString
# - id - SOAP::SOAPLong
# - policy - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobPolicy
# - request - AdwordsApi::V201003::BulkMutateJobService::BulkMutateRequest
# - status - AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus
# - history - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobEvent
# - result - AdwordsApi::V201003::BulkMutateJobService::BulkMutateResult
# - numRequestParts - SOAP::SOAPInt
# - numRequestPartsReceived - SOAP::SOAPInt
class BulkMutateJob < Job
  attr_accessor :customerJobKey
  attr_accessor :context
  attr_accessor :failureReason
  attr_accessor :stats
  attr_accessor :billingSummary
  attr_accessor :job_Type
  attr_accessor :id
  attr_accessor :policy
  attr_accessor :request
  attr_accessor :status
  attr_accessor :history
  attr_accessor :result
  attr_accessor :numRequestParts
  attr_accessor :numRequestPartsReceived

  def initialize(customerJobKey = nil, context = nil, failureReason = nil, stats = nil, billingSummary = nil, job_Type = nil, id = nil, policy = nil, request = nil, status = nil, history = [], result = nil, numRequestParts = nil, numRequestPartsReceived = nil)
    @customerJobKey = customerJobKey
    @context = context
    @failureReason = failureReason
    @stats = stats
    @billingSummary = billingSummary
    @job_Type = job_Type
    @id = id
    @policy = policy
    @request = request
    @status = status
    @history = history
    @result = result
    @numRequestParts = numRequestParts
    @numRequestPartsReceived = numRequestPartsReceived
  end
end

# JobContext
# - authenticatedUserEmail - SOAP::SOAPString
# - effectiveCustomerId - SOAP::SOAPLong
class JobContext
  attr_accessor :authenticatedUserEmail
  attr_accessor :effectiveCustomerId

  def initialize(authenticatedUserEmail = nil, effectiveCustomerId = nil)
    @authenticatedUserEmail = authenticatedUserEmail
    @effectiveCustomerId = effectiveCustomerId
  end
end

# JobEvent
# - dateTime - SOAP::SOAPString
# - jobEvent_Type - SOAP::SOAPString
class JobEvent
  attr_accessor :dateTime
  attr_accessor :jobEvent_Type

  def initialize(dateTime = nil, jobEvent_Type = nil)
    @dateTime = dateTime
    @jobEvent_Type = jobEvent_Type
  end
end

# BulkMutateJobEvent
# - dateTime - SOAP::SOAPString
# - jobEvent_Type - SOAP::SOAPString
# - status - AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus
class BulkMutateJobEvent < JobEvent
  attr_accessor :dateTime
  attr_accessor :jobEvent_Type
  attr_accessor :status

  def initialize(dateTime = nil, jobEvent_Type = nil, status = nil)
    @dateTime = dateTime
    @jobEvent_Type = jobEvent_Type
    @status = status
  end
end

# JobSelector
# abstract
# - customerJobKeys - SOAP::SOAPString
# - includeHistory - SOAP::SOAPBoolean
# - includeStats - SOAP::SOAPBoolean
# - jobSelector_Type - SOAP::SOAPString
class JobSelector
  attr_accessor :customerJobKeys
  attr_accessor :includeHistory
  attr_accessor :includeStats
  attr_accessor :jobSelector_Type

  def initialize(customerJobKeys = [], includeHistory = nil, includeStats = nil, jobSelector_Type = nil)
    @customerJobKeys = customerJobKeys
    @includeHistory = includeHistory
    @includeStats = includeStats
    @jobSelector_Type = jobSelector_Type
  end
end

# BulkMutateJobSelector
# - customerJobKeys - SOAP::SOAPString
# - includeHistory - SOAP::SOAPBoolean
# - includeStats - SOAP::SOAPBoolean
# - jobSelector_Type - SOAP::SOAPString
# - jobIds - SOAP::SOAPLong
# - jobStatuses - AdwordsApi::V201003::BulkMutateJobService::BasicJobStatus
# - resultPartIndex - SOAP::SOAPInt
class BulkMutateJobSelector < JobSelector
  attr_accessor :customerJobKeys
  attr_accessor :includeHistory
  attr_accessor :includeStats
  attr_accessor :jobSelector_Type
  attr_accessor :jobIds
  attr_accessor :jobStatuses
  attr_accessor :resultPartIndex

  def initialize(customerJobKeys = [], includeHistory = nil, includeStats = nil, jobSelector_Type = nil, jobIds = [], jobStatuses = [], resultPartIndex = nil)
    @customerJobKeys = customerJobKeys
    @includeHistory = includeHistory
    @includeStats = includeStats
    @jobSelector_Type = jobSelector_Type
    @jobIds = jobIds
    @jobStatuses = jobStatuses
    @resultPartIndex = resultPartIndex
  end
end

# JobStats
# - progressPercent - SOAP::SOAPInt
# - pendingTimeMillis - SOAP::SOAPLong
# - processingTimeMillis - SOAP::SOAPLong
# - jobStats_Type - SOAP::SOAPString
class JobStats
  attr_accessor :progressPercent
  attr_accessor :pendingTimeMillis
  attr_accessor :processingTimeMillis
  attr_accessor :jobStats_Type

  def initialize(progressPercent = nil, pendingTimeMillis = nil, processingTimeMillis = nil, jobStats_Type = nil)
    @progressPercent = progressPercent
    @pendingTimeMillis = pendingTimeMillis
    @processingTimeMillis = processingTimeMillis
    @jobStats_Type = jobStats_Type
  end
end

# BulkMutateJobStats
# - progressPercent - SOAP::SOAPInt
# - pendingTimeMillis - SOAP::SOAPLong
# - processingTimeMillis - SOAP::SOAPLong
# - jobStats_Type - SOAP::SOAPString
# - numOperations - SOAP::SOAPInt
# - numFailedOperations - SOAP::SOAPInt
# - numUnprocessedOperations - SOAP::SOAPInt
class BulkMutateJobStats < JobStats
  attr_accessor :progressPercent
  attr_accessor :pendingTimeMillis
  attr_accessor :processingTimeMillis
  attr_accessor :jobStats_Type
  attr_accessor :numOperations
  attr_accessor :numFailedOperations
  attr_accessor :numUnprocessedOperations

  def initialize(progressPercent = nil, pendingTimeMillis = nil, processingTimeMillis = nil, jobStats_Type = nil, numOperations = nil, numFailedOperations = nil, numUnprocessedOperations = nil)
    @progressPercent = progressPercent
    @pendingTimeMillis = pendingTimeMillis
    @processingTimeMillis = processingTimeMillis
    @jobStats_Type = jobStats_Type
    @numOperations = numOperations
    @numFailedOperations = numFailedOperations
    @numUnprocessedOperations = numUnprocessedOperations
  end
end

# LocationOverrideInfo
# - radius - SOAP::SOAPInt
# - radiusUnits - AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfoRadiusUnits
class LocationOverrideInfo
  attr_accessor :radius
  attr_accessor :radiusUnits

  def initialize(radius = nil, radiusUnits = nil)
    @radius = radius
    @radiusUnits = radiusUnits
  end
end

# Media
# - mediaId - SOAP::SOAPLong
# - mediaTypeDb - AdwordsApi::V201003::BulkMutateJobService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::BulkMutateJobService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
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
# - mediaTypeDb - AdwordsApi::V201003::BulkMutateJobService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::BulkMutateJobService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
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
# - mediaTypeDb - AdwordsApi::V201003::BulkMutateJobService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::BulkMutateJobService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
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
# - mediaTypeDb - AdwordsApi::V201003::BulkMutateJobService::MediaMediaType
# - referenceId - SOAP::SOAPLong
# - dimensions - AdwordsApi::V201003::BulkMutateJobService::Media_Size_DimensionsMapEntry
# - urls - AdwordsApi::V201003::BulkMutateJobService::Media_Size_StringMapEntry
# - mimeType - AdwordsApi::V201003::BulkMutateJobService::MediaMimeType
# - sourceUrl - SOAP::SOAPString
# - mediaSubType - AdwordsApi::V201003::BulkMutateJobService::MediaMediaSubType
# - name - SOAP::SOAPString
# - fileSize - SOAP::SOAPLong
# - extendedCapabilities - AdwordsApi::V201003::BulkMutateJobService::Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
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

# Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
# - key - AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityType
# - value - AdwordsApi::V201003::BulkMutateJobService::MediaMediaExtendedCapabilityState
class Media_MediaExtendedCapabilityType_Media_MediaExtendedCapabilityStateMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Media_Size_DimensionsMapEntry
# - key - AdwordsApi::V201003::BulkMutateJobService::MediaSize
# - value - AdwordsApi::V201003::BulkMutateJobService::Dimensions
class Media_Size_DimensionsMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Media_Size_StringMapEntry
# - key - AdwordsApi::V201003::BulkMutateJobService::MediaSize
# - value - SOAP::SOAPString
class Media_Size_StringMapEntry
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# Operand
# - adExtensionOverride - AdwordsApi::V201003::BulkMutateJobService::AdExtensionOverride
# - adGroupAd - AdwordsApi::V201003::BulkMutateJobService::AdGroupAd
# - adGroupCriterion - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion
# - adGroup - AdwordsApi::V201003::BulkMutateJobService::AdGroup
# - ad - AdwordsApi::V201003::BulkMutateJobService::Ad
# - campaignCriterion - AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion
# - campaign - AdwordsApi::V201003::BulkMutateJobService::Campaign
# - job - AdwordsApi::V201003::BulkMutateJobService::Job
# - media - AdwordsApi::V201003::BulkMutateJobService::Media
# - targetList - AdwordsApi::V201003::BulkMutateJobService::TargetList
# - target - AdwordsApi::V201003::BulkMutateJobService::Target
class Operand
  attr_accessor :adExtensionOverride
  attr_accessor :adGroupAd
  attr_accessor :adGroupCriterion
  attr_accessor :adGroup
  attr_accessor :ad
  attr_accessor :campaignCriterion
  attr_accessor :campaign
  attr_accessor :job
  attr_accessor :media
  attr_accessor :targetList
  attr_accessor :target

  def initialize(adExtensionOverride = nil, adGroupAd = nil, adGroupCriterion = nil, adGroup = nil, ad = nil, campaignCriterion = nil, campaign = nil, job = nil, media = nil, targetList = nil, target = nil)
    @adExtensionOverride = adExtensionOverride
    @adGroupAd = adGroupAd
    @adGroupCriterion = adGroupCriterion
    @adGroup = adGroup
    @ad = ad
    @campaignCriterion = campaignCriterion
    @campaign = campaign
    @job = job
    @media = media
    @targetList = targetList
    @target = target
  end
end

# Operation
# abstract
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
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
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::AdGroupAd
# - exemptionRequests - AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest
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

# AdGroupCriterionOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::AdGroupCriterion
# - exemptionRequests - AdwordsApi::V201003::BulkMutateJobService::ExemptionRequest
class AdGroupCriterionOperation < Operation
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

# AdGroupOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::AdGroup
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

# CampaignCriterionOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::CampaignCriterion
class CampaignCriterionOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
  end
end

# CampaignOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - biddingTransition - AdwordsApi::V201003::BulkMutateJobService::BiddingTransition
# - operand - AdwordsApi::V201003::BulkMutateJobService::Campaign
class CampaignOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :biddingTransition
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, biddingTransition = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @biddingTransition = biddingTransition
    @operand = operand
  end
end

# CampaignTargetOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::TargetList
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

# JobOperation
# - operator - AdwordsApi::V201003::BulkMutateJobService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdwordsApi::V201003::BulkMutateJobService::Job
class JobOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
  end
end

# OperationResult
# abstract
# - operationResult_Type - SOAP::SOAPString
class OperationResult
  attr_accessor :operationResult_Type

  def initialize(operationResult_Type = nil)
    @operationResult_Type = operationResult_Type
  end
end

# BatchFailureResult
# - operationResult_Type - SOAP::SOAPString
# - operationIndexInBatch - SOAP::SOAPInt
class BatchFailureResult < OperationResult
  attr_accessor :operationResult_Type
  attr_accessor :operationIndexInBatch

  def initialize(operationResult_Type = nil, operationIndexInBatch = nil)
    @operationResult_Type = operationResult_Type
    @operationIndexInBatch = operationIndexInBatch
  end
end

# FailureResult
# - operationResult_Type - SOAP::SOAPString
# - cause - AdwordsApi::V201003::BulkMutateJobService::ApiException
class FailureResult < OperationResult
  attr_accessor :operationResult_Type
  attr_accessor :cause

  def initialize(operationResult_Type = nil, cause = nil)
    @operationResult_Type = operationResult_Type
    @cause = cause
  end
end

# LostResult
# - operationResult_Type - SOAP::SOAPString
class LostResult < OperationResult
  attr_accessor :operationResult_Type

  def initialize(operationResult_Type = nil)
    @operationResult_Type = operationResult_Type
  end
end

# ReturnValueResult
# - operationResult_Type - SOAP::SOAPString
# - returnValue - AdwordsApi::V201003::BulkMutateJobService::Operand
class ReturnValueResult < OperationResult
  attr_accessor :operationResult_Type
  attr_accessor :returnValue

  def initialize(operationResult_Type = nil, returnValue = nil)
    @operationResult_Type = operationResult_Type
    @returnValue = returnValue
  end
end

# UnprocessedResult
# - operationResult_Type - SOAP::SOAPString
class UnprocessedResult < OperationResult
  attr_accessor :operationResult_Type

  def initialize(operationResult_Type = nil)
    @operationResult_Type = operationResult_Type
  end
end

# OperationStream
# - scopingEntityId - AdwordsApi::V201003::BulkMutateJobService::EntityId
# - operations - AdwordsApi::V201003::BulkMutateJobService::Operation
class OperationStream
  attr_accessor :scopingEntityId
  attr_accessor :operations

  def initialize(scopingEntityId = nil, operations = [])
    @scopingEntityId = scopingEntityId
    @operations = operations
  end
end

# OperationStreamResult
# - operationResults - AdwordsApi::V201003::BulkMutateJobService::OperationResult
class OperationStreamResult
  attr_accessor :operationResults

  def initialize(operationResults = [])
    @operationResults = operationResults
  end
end

# OverrideInfo
# - locationOverrideInfo - AdwordsApi::V201003::BulkMutateJobService::LocationOverrideInfo
class OverrideInfo
  attr_accessor :locationOverrideInfo

  def initialize(locationOverrideInfo = nil)
    @locationOverrideInfo = locationOverrideInfo
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

# PositionPreferenceAdGroupCriterionBids
# - proxyMaxCpc - AdwordsApi::V201003::BulkMutateJobService::Bid
# - preferredPosition - SOAP::SOAPInt
# - bottomPosition - SOAP::SOAPInt
class PositionPreferenceAdGroupCriterionBids
  attr_accessor :proxyMaxCpc
  attr_accessor :preferredPosition
  attr_accessor :bottomPosition

  def initialize(proxyMaxCpc = nil, preferredPosition = nil, bottomPosition = nil)
    @proxyMaxCpc = proxyMaxCpc
    @preferredPosition = preferredPosition
    @bottomPosition = bottomPosition
  end
end

# QualityInfo
# - isKeywordAdRelevanceAcceptable - SOAP::SOAPBoolean
# - isLandingPageQualityAcceptable - SOAP::SOAPBoolean
# - isLandingPageLatencyAcceptable - SOAP::SOAPBoolean
# - qualityScore - SOAP::SOAPInt
class QualityInfo
  attr_accessor :isKeywordAdRelevanceAcceptable
  attr_accessor :isLandingPageQualityAcceptable
  attr_accessor :isLandingPageLatencyAcceptable
  attr_accessor :qualityScore

  def initialize(isKeywordAdRelevanceAcceptable = nil, isLandingPageQualityAcceptable = nil, isLandingPageLatencyAcceptable = nil, qualityScore = nil)
    @isKeywordAdRelevanceAcceptable = isKeywordAdRelevanceAcceptable
    @isLandingPageQualityAcceptable = isLandingPageQualityAcceptable
    @isLandingPageLatencyAcceptable = isLandingPageLatencyAcceptable
    @qualityScore = qualityScore
  end
end

# Sitelink
# - displayText - SOAP::SOAPString
# - destinationUrl - SOAP::SOAPString
class Sitelink
  attr_accessor :displayText
  attr_accessor :destinationUrl

  def initialize(displayText = nil, destinationUrl = nil)
    @displayText = displayText
    @destinationUrl = destinationUrl
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

# Stats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201003::BulkMutateJobService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::BulkMutateJobService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::BulkMutateJobService::Money
# - averageCpm - AdwordsApi::V201003::BulkMutateJobService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::BulkMutateJobService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::BulkMutateJobService::Money
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
# - network - AdwordsApi::V201003::BulkMutateJobService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::BulkMutateJobService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::BulkMutateJobService::Money
# - averageCpm - AdwordsApi::V201003::BulkMutateJobService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::BulkMutateJobService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::BulkMutateJobService::Money
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
# - network - AdwordsApi::V201003::BulkMutateJobService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::BulkMutateJobService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::BulkMutateJobService::Money
# - averageCpm - AdwordsApi::V201003::BulkMutateJobService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::BulkMutateJobService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::BulkMutateJobService::Money
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

# CampaignStats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdwordsApi::V201003::BulkMutateJobService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdwordsApi::V201003::BulkMutateJobService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdwordsApi::V201003::BulkMutateJobService::Money
# - averageCpm - AdwordsApi::V201003::BulkMutateJobService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdwordsApi::V201003::BulkMutateJobService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdwordsApi::V201003::BulkMutateJobService::Money
# - stats_Type - SOAP::SOAPString
class CampaignStats < Stats
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
# - dayOfWeek - AdwordsApi::V201003::BulkMutateJobService::DayOfWeek
# - startHour - SOAP::SOAPInt
# - startMinute - AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour
# - endHour - SOAP::SOAPInt
# - endMinute - AdwordsApi::V201003::BulkMutateJobService::MinuteOfHour
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
# - age - AdwordsApi::V201003::BulkMutateJobService::AgeTargetAge
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
# - gender - AdwordsApi::V201003::BulkMutateJobService::GenderTargetGender
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
# - vertices - AdwordsApi::V201003::BulkMutateJobService::GeoPoint
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
# - geoPoint - AdwordsApi::V201003::BulkMutateJobService::GeoPoint
# - radiusDistanceUnits - AdwordsApi::V201003::BulkMutateJobService::ProximityTargetDistanceUnits
# - radiusInUnits - SOAP::SOAPDouble
# - address - AdwordsApi::V201003::BulkMutateJobService::Address
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
# - networkCoverageType - AdwordsApi::V201003::BulkMutateJobService::NetworkCoverageType
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
# - platformType - AdwordsApi::V201003::BulkMutateJobService::PlatformType
class PlatformTarget < Target
  attr_accessor :target_Type
  attr_accessor :platformType

  def initialize(target_Type = nil, platformType = nil)
    @target_Type = target_Type
    @platformType = platformType
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::AdScheduleTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::DemographicTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::GeoTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::LanguageTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::MobileTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::NetworkTarget
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
# - targets - AdwordsApi::V201003::BulkMutateJobService::PlatformTarget
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

# TemplateElement
# - uniqueName - SOAP::SOAPString
# - fields - AdwordsApi::V201003::BulkMutateJobService::TemplateElementField
class TemplateElement
  attr_accessor :uniqueName
  attr_accessor :fields

  def initialize(uniqueName = nil, fields = [])
    @uniqueName = uniqueName
    @fields = fields
  end
end

# TemplateElementField
# - name - SOAP::SOAPString
# - type - AdwordsApi::V201003::BulkMutateJobService::TemplateElementFieldType
# - fieldText - SOAP::SOAPString
# - fieldMedia - AdwordsApi::V201003::BulkMutateJobService::Media
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

# AdExtensionOverride.ApprovalStatus
class AdExtensionOverrideApprovalStatus < ::String
  APPROVED = AdExtensionOverrideApprovalStatus.new("APPROVED")
  DISAPPROVED = AdExtensionOverrideApprovalStatus.new("DISAPPROVED")
  UNCHECKED = AdExtensionOverrideApprovalStatus.new("UNCHECKED")
end

# AdExtensionOverride.Status
class AdExtensionOverrideStatus < ::String
  ACTIVE = AdExtensionOverrideStatus.new("ACTIVE")
  DELETED = AdExtensionOverrideStatus.new("DELETED")
end

# AdGroup.Status
class AdGroupStatus < ::String
  DELETED = AdGroupStatus.new("DELETED")
  ENABLED = AdGroupStatus.new("ENABLED")
  PAUSED = AdGroupStatus.new("PAUSED")
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

# AdGroupCriterionError.Reason
class AdGroupCriterionErrorReason < ::String
  BID_INCOMPATIBLE_WITH_ADGROUP = AdGroupCriterionErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  CANNOT_ADD_CRITERIA_TYPE = AdGroupCriterionErrorReason.new("CANNOT_ADD_CRITERIA_TYPE")
  CANNOT_TARGET_AND_EXCLUDE = AdGroupCriterionErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANT_UPDATE_NEGATIVE = AdGroupCriterionErrorReason.new("CANT_UPDATE_NEGATIVE")
  CONCRETE_TYPE_REQUIRED = AdGroupCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERION_NOT_TARGETED = AdGroupCriterionErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = AdGroupCriterionErrorReason.new("CURRENCY_MISMATCH")
  ID_FILTERS_HAVE_DIFF_FIELDS_SET = AdGroupCriterionErrorReason.new("ID_FILTERS_HAVE_DIFF_FIELDS_SET")
  ILLEGAL_URL = AdGroupCriterionErrorReason.new("ILLEGAL_URL")
  INAPPLICABLE_FILTER_SPECIFIED = AdGroupCriterionErrorReason.new("INAPPLICABLE_FILTER_SPECIFIED")
  INAPPLICABLE_FOR_NEGATIVE = AdGroupCriterionErrorReason.new("INAPPLICABLE_FOR_NEGATIVE")
  INVALID_DESTINATION_URL = AdGroupCriterionErrorReason.new("INVALID_DESTINATION_URL")
  INVALID_ID_FILTER_TYPE = AdGroupCriterionErrorReason.new("INVALID_ID_FILTER_TYPE")
  INVALID_KEYWORD_TEXT = AdGroupCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_USER_STATUS = AdGroupCriterionErrorReason.new("INVALID_USER_STATUS")
  INVALID_VERTICAL_PATH = AdGroupCriterionErrorReason.new("INVALID_VERTICAL_PATH")
  KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM = AdGroupCriterionErrorReason.new("KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM")
  NETWORK_NOT_OVERRIDABLE = AdGroupCriterionErrorReason.new("NETWORK_NOT_OVERRIDABLE")
  NO_EFFECTIVE_BID_FOR_THIS_CRITERION = AdGroupCriterionErrorReason.new("NO_EFFECTIVE_BID_FOR_THIS_CRITERION")
  TOO_MANY_OPERTAIONS = AdGroupCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
  TYPE_MISMATCH = AdGroupCriterionErrorReason.new("TYPE_MISMATCH")
  UNKNOWN = AdGroupCriterionErrorReason.new("UNKNOWN")
end

# AdGroupCriterionLimitExceeded.CriteriaLimitType
class AdGroupCriterionLimitExceededCriteriaLimitType < ::String
  ADGROUP_KEYWORD = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_KEYWORD")
  ADGROUP_WEBSITE = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_WEBSITE")
end

# AdGroupServiceError.Reason
class AdGroupServiceErrorReason < ::String
  ADGROUP_CAMPAIGN_MISMATCH = AdGroupServiceErrorReason.new("ADGROUP_CAMPAIGN_MISMATCH")
  ADVERTISER_NOT_ON_CONTENT_NETWORK = AdGroupServiceErrorReason.new("ADVERTISER_NOT_ON_CONTENT_NETWORK")
  BIDS_NOT_REQUIRED = AdGroupServiceErrorReason.new("BIDS_NOT_REQUIRED")
  BID_EXCEEDS_AUTO_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_AUTO_BUDGET")
  BID_EXCEEDS_CUSTOM_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_CUSTOM_BUDGET")
  BID_EXCEEDS_DAILY_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_DAILY_BUDGET")
  BID_EXCEEDS_MONTHLY_BUDGET = AdGroupServiceErrorReason.new("BID_EXCEEDS_MONTHLY_BUDGET")
  BID_TOO_BIG = AdGroupServiceErrorReason.new("BID_TOO_BIG")
  BID_TOO_SMALL = AdGroupServiceErrorReason.new("BID_TOO_SMALL")
  BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH = AdGroupServiceErrorReason.new("BID_TYPE_AND_BIDDING_STRATEGY_MISMATCH")
  DUPLICATE_ADGROUP_NAME = AdGroupServiceErrorReason.new("DUPLICATE_ADGROUP_NAME")
  ILLEGAL_MANUAL_BID = AdGroupServiceErrorReason.new("ILLEGAL_MANUAL_BID")
  INCOMPATIBLE_WITH_KEYWORD_AND_SITE_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_AND_SITE_VBB")
  INCOMPATIBLE_WITH_KEYWORD_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPC")
  INCOMPATIBLE_WITH_KEYWORD_CPC_AND_SITE_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPC_AND_SITE_CPC")
  INCOMPATIBLE_WITH_KEYWORD_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPM")
  INCOMPATIBLE_WITH_KEYWORD_CPM_AND_SITE_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_KEYWORD_CPM_AND_SITE_CPM")
  INCOMPATIBLE_WITH_SITE_CPC = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_CPC")
  INCOMPATIBLE_WITH_SITE_CPM = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_CPM")
  INCOMPATIBLE_WITH_SITE_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_SITE_VBB")
  INCOMPATIBLE_WITH_VBB = AdGroupServiceErrorReason.new("INCOMPATIBLE_WITH_VBB")
  INVALID_ADGROUP_ID = AdGroupServiceErrorReason.new("INVALID_ADGROUP_ID")
  INVALID_ADGROUP_NAME = AdGroupServiceErrorReason.new("INVALID_ADGROUP_NAME")
  INVALID_BID = AdGroupServiceErrorReason.new("INVALID_BID")
  MISSING_ADGROUP_NAME = AdGroupServiceErrorReason.new("MISSING_ADGROUP_NAME")
  MISSING_BID = AdGroupServiceErrorReason.new("MISSING_BID")
  MULTIPLE_BID_TYPES = AdGroupServiceErrorReason.new("MULTIPLE_BID_TYPES")
  NOT_WHITELISTED_FOR_SITE_CPC = AdGroupServiceErrorReason.new("NOT_WHITELISTED_FOR_SITE_CPC")
  NO_CAMPAIGN_BUDGET = AdGroupServiceErrorReason.new("NO_CAMPAIGN_BUDGET")
  SEPARATE_CONTENT_BIDS_INAPPLICABLE = AdGroupServiceErrorReason.new("SEPARATE_CONTENT_BIDS_INAPPLICABLE")
  SEPARATE_CONTENT_BIDS_NOT_ENABLED = AdGroupServiceErrorReason.new("SEPARATE_CONTENT_BIDS_NOT_ENABLED")
  TOO_MANY_FRACTION_DIGITS = AdGroupServiceErrorReason.new("TOO_MANY_FRACTION_DIGITS")
  USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED = AdGroupServiceErrorReason.new("USE_SET_OPERATOR_AND_MARK_STATUS_TO_DELETED")
end

# AdServingOptimizationStatus
class AdServingOptimizationStatus < ::String
  OPTIMIZE = AdServingOptimizationStatus.new("OPTIMIZE")
  ROTATE = AdServingOptimizationStatus.new("ROTATE")
  UNAVAILABLE = AdServingOptimizationStatus.new("UNAVAILABLE")
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

# ApprovalStatus
class ApprovalStatus < ::String
  APPROVED = ApprovalStatus.new("APPROVED")
  DISAPPROVED = ApprovalStatus.new("DISAPPROVED")
  PENDING_REVIEW = ApprovalStatus.new("PENDING_REVIEW")
  UNDER_REVIEW = ApprovalStatus.new("UNDER_REVIEW")
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

# AutoKeywordMatchingStatus
class AutoKeywordMatchingStatus < ::String
  OPT_IN = AutoKeywordMatchingStatus.new("OPT_IN")
  OPT_OUT = AutoKeywordMatchingStatus.new("OPT_OUT")
end

# BasicJobStatus
class BasicJobStatus < ::String
  COMPLETED = BasicJobStatus.new("COMPLETED")
  FAILED = BasicJobStatus.new("FAILED")
  PENDING = BasicJobStatus.new("PENDING")
  PROCESSING = BasicJobStatus.new("PROCESSING")
end

# BidSource
class BidSource < ::String
  ADGROUP = BidSource.new("ADGROUP")
  CRITERION = BidSource.new("CRITERION")
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

# BiddingTransitionError.Reason
class BiddingTransitionErrorReason < ::String
  ACCELERATED_DELIVERY_NOT_SUPPORTED_FOR_BUDGET_OPTIMIZER = BiddingTransitionErrorReason.new("ACCELERATED_DELIVERY_NOT_SUPPORTED_FOR_BUDGET_OPTIMIZER")
  BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE = BiddingTransitionErrorReason.new("BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE")
  BIDDING_TRANSITION_FAILED = BiddingTransitionErrorReason.new("BIDDING_TRANSITION_FAILED")
  BID_TO_POSITION_ENABLED = BiddingTransitionErrorReason.new("BID_TO_POSITION_ENABLED")
  BUDGET_OPTIMIZER_IS_ENABLED = BiddingTransitionErrorReason.new("BUDGET_OPTIMIZER_IS_ENABLED")
  CANNOT_SET_EXPLICIT_BID = BiddingTransitionErrorReason.new("CANNOT_SET_EXPLICIT_BID")
  CONVERSION_OPTIMIZER_IS_ENABLED = BiddingTransitionErrorReason.new("CONVERSION_OPTIMIZER_IS_ENABLED")
  CONVERSION_TRACKING_NOT_AVAILABLE_FOR_ACCOUNT_TYPE = BiddingTransitionErrorReason.new("CONVERSION_TRACKING_NOT_AVAILABLE_FOR_ACCOUNT_TYPE")
  CONVERSION_TRACKING_NOT_ENABLED = BiddingTransitionErrorReason.new("CONVERSION_TRACKING_NOT_ENABLED")
  EXPLICIT_BID_REQUIRED_FOR_TRANSITION = BiddingTransitionErrorReason.new("EXPLICIT_BID_REQUIRED_FOR_TRANSITION")
  EXPLICIT_BID_TYPE_DOES_NOT_MATCH_CAMPAIGN_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("EXPLICIT_BID_TYPE_DOES_NOT_MATCH_CAMPAIGN_BIDDING_STRATEGY")
  INVALID_BID = BiddingTransitionErrorReason.new("INVALID_BID")
  INVALID_STATUS = BiddingTransitionErrorReason.new("INVALID_STATUS")
  IS_CPM_CAMPAIGN = BiddingTransitionErrorReason.new("IS_CPM_CAMPAIGN")
  MISSING_REQUIRED_BID = BiddingTransitionErrorReason.new("MISSING_REQUIRED_BID")
  NOT_ENOUGH_CONVERSIONS = BiddingTransitionErrorReason.new("NOT_ENOUGH_CONVERSIONS")
  NOT_ENOUGH_CONVERSION_DATA = BiddingTransitionErrorReason.new("NOT_ENOUGH_CONVERSION_DATA")
  NOT_THE_PREVIOUS_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("NOT_THE_PREVIOUS_BIDDING_STRATEGY")
  OPTED_IN_SEARCH = BiddingTransitionErrorReason.new("OPTED_IN_SEARCH")
  PROXY_BIDDING_ON = BiddingTransitionErrorReason.new("PROXY_BIDDING_ON")
  SITE_REMNANT_RESERVATION_ALLOWED = BiddingTransitionErrorReason.new("SITE_REMNANT_RESERVATION_ALLOWED")
  TRANSITION_TO_ITSELF = BiddingTransitionErrorReason.new("TRANSITION_TO_ITSELF")
  UNKNOWN_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("UNKNOWN_BIDDING_STRATEGY")
  UNSUPPORTED_TRANSITION = BiddingTransitionErrorReason.new("UNSUPPORTED_TRANSITION")
  USE_POSITION_PREFERENCE_IN_MANUALCPC_INSTEAD_TO_DISABLE_POSITION_PREFERENCE = BiddingTransitionErrorReason.new("USE_POSITION_PREFERENCE_IN_MANUALCPC_INSTEAD_TO_DISABLE_POSITION_PREFERENCE")
  VCG_ENABLED = BiddingTransitionErrorReason.new("VCG_ENABLED")
end

# Budget.BudgetDeliveryMethod
class BudgetBudgetDeliveryMethod < ::String
  ACCELERATED = BudgetBudgetDeliveryMethod.new("ACCELERATED")
  STANDARD = BudgetBudgetDeliveryMethod.new("STANDARD")
end

# Budget.BudgetPeriod
class BudgetBudgetPeriod < ::String
  DAILY = BudgetBudgetPeriod.new("DAILY")
  MONTHLY = BudgetBudgetPeriod.new("MONTHLY")
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

# BulkMutateJobError.Reason
class BulkMutateJobErrorReason < ::String
  CANNOT_UPDATE_JOB_ONCE_ALL_REQUEST_PARTS_ARE_RECEIVED = BulkMutateJobErrorReason.new("CANNOT_UPDATE_JOB_ONCE_ALL_REQUEST_PARTS_ARE_RECEIVED")
  CAN_RETURN_RESULT_FOR_ONLY_COMPLETED_JOBS = BulkMutateJobErrorReason.new("CAN_RETURN_RESULT_FOR_ONLY_COMPLETED_JOBS")
  CAN_RETURN_RESULT_FOR_ONLY_ONE_JOB = BulkMutateJobErrorReason.new("CAN_RETURN_RESULT_FOR_ONLY_ONE_JOB")
  INVALID_SCOPING_ENTITY_TYPE = BulkMutateJobErrorReason.new("INVALID_SCOPING_ENTITY_TYPE")
  MISSING_SCOPING_ENTITY_FOR_OPERATION_STREAM = BulkMutateJobErrorReason.new("MISSING_SCOPING_ENTITY_FOR_OPERATION_STREAM")
  MORE_THAN_ONE_SCOPING_ENTITY_TYPE = BulkMutateJobErrorReason.new("MORE_THAN_ONE_SCOPING_ENTITY_TYPE")
  PAYLOAD_STORE_UNAVAILABLE = BulkMutateJobErrorReason.new("PAYLOAD_STORE_UNAVAILABLE")
  REQUEST_PART_IS_OUT_OF_ORDER = BulkMutateJobErrorReason.new("REQUEST_PART_IS_OUT_OF_ORDER")
  TOO_FEW_OPERATIONS_IN_JOB = BulkMutateJobErrorReason.new("TOO_FEW_OPERATIONS_IN_JOB")
  TOO_MANY_OPERATIONS_IN_JOB = BulkMutateJobErrorReason.new("TOO_MANY_OPERATIONS_IN_JOB")
  TOO_MANY_OPERATIONS_IN_REQUEST_PART = BulkMutateJobErrorReason.new("TOO_MANY_OPERATIONS_IN_REQUEST_PART")
  TOO_MANY_OPERATION_STREAMS_IN_REQUEST_PART = BulkMutateJobErrorReason.new("TOO_MANY_OPERATION_STREAMS_IN_REQUEST_PART")
  TOO_MANY_RESULTS_TO_STORE = BulkMutateJobErrorReason.new("TOO_MANY_RESULTS_TO_STORE")
  TOO_MANY_SCOPING_ENTITIES = BulkMutateJobErrorReason.new("TOO_MANY_SCOPING_ENTITIES")
  UNKNOWN = BulkMutateJobErrorReason.new("UNKNOWN")
end

# CampaignCriterionError.Reason
class CampaignCriterionErrorReason < ::String
  CANNOT_EXCLUDE_CRITERIA_TYPE = CampaignCriterionErrorReason.new("CANNOT_EXCLUDE_CRITERIA_TYPE")
  CONCRETE_TYPE_REQUIRED = CampaignCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERIA_QUOTA_EXCEEDED = CampaignCriterionErrorReason.new("CRITERIA_QUOTA_EXCEEDED")
  ID_FILTERS_HAVE_DIFF_FIELDS_SET = CampaignCriterionErrorReason.new("ID_FILTERS_HAVE_DIFF_FIELDS_SET")
  INVALID_EXCLUDED_CATEGORY = CampaignCriterionErrorReason.new("INVALID_EXCLUDED_CATEGORY")
  INVALID_KEYWORD_TEXT = CampaignCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_PLACEMENT_URL = CampaignCriterionErrorReason.new("INVALID_PLACEMENT_URL")
  INVALID_VERTICAL_PATH = CampaignCriterionErrorReason.new("INVALID_VERTICAL_PATH")
  TOO_MANY_OPERTAIONS = CampaignCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
  UNKNOWN = CampaignCriterionErrorReason.new("UNKNOWN")
end

# CampaignCriterionLimitExceeded.CriteriaLimitType
class CampaignCriterionLimitExceededCriteriaLimitType < ::String
  CAMPAIGN_NEGATIVE_KEYWORD = CampaignCriterionLimitExceededCriteriaLimitType.new("CAMPAIGN_NEGATIVE_KEYWORD")
  CAMPAIGN_NEGATIVE_WEBSITE = CampaignCriterionLimitExceededCriteriaLimitType.new("CAMPAIGN_NEGATIVE_WEBSITE")
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

# CampaignStatus
class CampaignStatus < ::String
  ACTIVE = CampaignStatus.new("ACTIVE")
  DELETED = CampaignStatus.new("DELETED")
  PAUSED = CampaignStatus.new("PAUSED")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# ContentLabelType
class ContentLabelType < ::String
  ADULTISH = ContentLabelType.new("ADULTISH")
  AFE = ContentLabelType.new("AFE")
  BELOW_THE_FOLD = ContentLabelType.new("BELOW_THE_FOLD")
  CONFLICT = ContentLabelType.new("CONFLICT")
  DP = ContentLabelType.new("DP")
  EMBEDDED_VIDEO = ContentLabelType.new("EMBEDDED_VIDEO")
  GAMES = ContentLabelType.new("GAMES")
  JACKASS = ContentLabelType.new("JACKASS")
  PROFANITY = ContentLabelType.new("PROFANITY")
  SIRENS = ContentLabelType.new("SIRENS")
  TRAGEDY = ContentLabelType.new("TRAGEDY")
  UGC_FORUMS = ContentLabelType.new("UGC_FORUMS")
  UGC_IMAGES = ContentLabelType.new("UGC_IMAGES")
  UGC_SOCIAL = ContentLabelType.new("UGC_SOCIAL")
  UGC_VIDEOS = ContentLabelType.new("UGC_VIDEOS")
  VIDEO = ContentLabelType.new("VIDEO")
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

# EntityAccessDenied.Reason
class EntityAccessDeniedReason < ::String
  READ_ACCESS_DENIED = EntityAccessDeniedReason.new("READ_ACCESS_DENIED")
  WRITE_ACCESS_DENIED = EntityAccessDeniedReason.new("WRITE_ACCESS_DENIED")
end

# EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
end

# EntityId.Type
class EntityIdType < ::String
  ADGROUP_ID = EntityIdType.new("ADGROUP_ID")
  AD_ID = EntityIdType.new("AD_ID")
  CAMPAIGN_ID = EntityIdType.new("CAMPAIGN_ID")
  CUSTOMER_ID = EntityIdType.new("CUSTOMER_ID")
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

# JobError.Reason
class JobErrorReason < ::String
  DUPLICATE_JOB_KEY_FOR_CUSTOMER = JobErrorReason.new("DUPLICATE_JOB_KEY_FOR_CUSTOMER")
  JOB_TYPE_NOT_SUPPORTED = JobErrorReason.new("JOB_TYPE_NOT_SUPPORTED")
  PREREQUISITE_JOB_FAILED = JobErrorReason.new("PREREQUISITE_JOB_FAILED")
  SELECTOR_CANNOT_USE_BOTH_JOB_IDS_AND_JOB_KEYS = JobErrorReason.new("SELECTOR_CANNOT_USE_BOTH_JOB_IDS_AND_JOB_KEYS")
  TOO_MANY_JOBS_IN_QUEUE = JobErrorReason.new("TOO_MANY_JOBS_IN_QUEUE")
  TOO_MANY_PREREQUISITE_JOBS = JobErrorReason.new("TOO_MANY_PREREQUISITE_JOBS")
  WORKFLOW_FAILURE = JobErrorReason.new("WORKFLOW_FAILURE")
end

# KeywordMatchType
class KeywordMatchType < ::String
  BROAD = KeywordMatchType.new("BROAD")
  EXACT = KeywordMatchType.new("EXACT")
  PHRASE = KeywordMatchType.new("PHRASE")
end

# Level
class Level < ::String
  ADGROUP = Level.new("ADGROUP")
  CAMPAIGN = Level.new("CAMPAIGN")
  CREATIVE = Level.new("CREATIVE")
  UNKNOWN = Level.new("UNKNOWN")
end

# LoasAuthenticationError.Reason
class LoasAuthenticationErrorReason < ::String
  ADS_USER_NOT_FOUND = LoasAuthenticationErrorReason.new("ADS_USER_NOT_FOUND")
  CLIENT_NOT_AUTHORIZED = LoasAuthenticationErrorReason.new("CLIENT_NOT_AUTHORIZED")
  NOT_INTERNAL_USER = LoasAuthenticationErrorReason.new("NOT_INTERNAL_USER")
  PROTOCOL_MISMATCH = LoasAuthenticationErrorReason.new("PROTOCOL_MISMATCH")
  SECURITY_LEVEL_MISMATCH = LoasAuthenticationErrorReason.new("SECURITY_LEVEL_MISMATCH")
  UNKNOWN = LoasAuthenticationErrorReason.new("UNKNOWN")
end

# LocationExtension.Source
class LocationExtensionSource < ::String
  ADWORDS_FRONTEND = LocationExtensionSource.new("ADWORDS_FRONTEND")
  LBC_SYNC = LocationExtensionSource.new("LBC_SYNC")
end

# LocationOverrideInfo.RadiusUnits
class LocationOverrideInfoRadiusUnits < ::String
  KILOMETERS = LocationOverrideInfoRadiusUnits.new("KILOMETERS")
  MILES = LocationOverrideInfoRadiusUnits.new("MILES")
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

# OperatorError.Reason
class OperatorErrorReason < ::String
  OPERATOR_NOT_SUPPORTED = OperatorErrorReason.new("OPERATOR_NOT_SUPPORTED")
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

# PolicyViolationError.Reason
class PolicyViolationErrorReason < ::String
  POLICY_ERROR = PolicyViolationErrorReason.new("POLICY_ERROR")
end

# PositionPreference
class PositionPreference < ::String
  OFF = PositionPreference.new("OFF")
  ON = PositionPreference.new("ON")
end

# PricingModel
class PricingModel < ::String
  CLICKS = PricingModel.new("CLICKS")
  CONVERSIONS = PricingModel.new("CONVERSIONS")
  IMPRESSIONS = PricingModel.new("IMPRESSIONS")
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

# QuotaExceededError.Reason
class QuotaExceededErrorReason < ::String
  QUOTA_EXCEEDED = QuotaExceededErrorReason.new("QUOTA_EXCEEDED")
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

# ServingStatus
class ServingStatus < ::String
  ENDED = ServingStatus.new("ENDED")
  NONE = ServingStatus.new("NONE")
  PENDING = ServingStatus.new("PENDING")
  SERVING = ServingStatus.new("SERVING")
  SUSPENDED = ServingStatus.new("SUSPENDED")
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

# StringLengthError.Reason
class StringLengthErrorReason < ::String
  TOO_LONG = StringLengthErrorReason.new("TOO_LONG")
  TOO_SHORT = StringLengthErrorReason.new("TOO_SHORT")
end

# SystemServingStatus
class SystemServingStatus < ::String
  ELIGIBLE = SystemServingStatus.new("ELIGIBLE")
  RARELY_SERVED = SystemServingStatus.new("RARELY_SERVED")
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

# TimeUnit
class TimeUnit < ::String
  DAY = TimeUnit.new("DAY")
  HOUR = TimeUnit.new("HOUR")
  LIFETIME = TimeUnit.new("LIFETIME")
  MINUTE = TimeUnit.new("MINUTE")
  MONTH = TimeUnit.new("MONTH")
  WEEK = TimeUnit.new("WEEK")
end

# UserStatus
class UserStatus < ::String
  ACTIVE = UserStatus.new("ACTIVE")
  DELETED = UserStatus.new("DELETED")
  PAUSED = UserStatus.new("PAUSED")
end

# VideoType
class VideoType < ::String
  ADOBE = VideoType.new("ADOBE")
  QUICKTIME = VideoType.new("QUICKTIME")
  REALPLAYER = VideoType.new("REALPLAYER")
  WINDOWSMEDIA = VideoType.new("WINDOWSMEDIA")
end

# get
# - selector - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJobSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = [])
    @rval = rval
  end
end

# mutate
# - operation - AdwordsApi::V201003::BulkMutateJobService::JobOperation
class Mutate #:nodoc: all
  attr_accessor :operation

  def initialize(operation = nil)
    @operation = operation
  end
end

# mutateResponse
# - rval - AdwordsApi::V201003::BulkMutateJobService::BulkMutateJob
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
