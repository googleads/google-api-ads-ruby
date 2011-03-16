require 'adwords_api/v13/TrafficEstimatorService'
require 'soap/mapping'

module AdwordsApi; module V13; module TrafficEstimatorService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV13, "AdGroupEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdwordsApi::V13::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::AdGroupRequest,
    :schema_type => XSD::QName.new(NsV13, "AdGroupRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["keywordRequests", "AdwordsApi::V13::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV13, "CampaignEstimate"),
    :schema_element => [
      ["adGroupEstimates", "AdwordsApi::V13::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CampaignRequest,
    :schema_type => XSD::QName.new(NsV13, "CampaignRequest"),
    :schema_element => [
      ["adGroupRequests", "AdwordsApi::V13::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdwordsApi::V13::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdwordsApi::V13::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdwordsApi::V13::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdwordsApi::V13::TrafficEstimatorService::CityTargets", [0, 1]],
      ["countryTargets", "AdwordsApi::V13::TrafficEstimatorService::CountryTargets", [0, 1]],
      ["metroTargets", "AdwordsApi::V13::TrafficEstimatorService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdwordsApi::V13::TrafficEstimatorService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdwordsApi::V13::TrafficEstimatorService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV13, "KeywordEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["lowerAvgPosition", "SOAP::SOAPFloat"],
      ["lowerClicksPerDay", "SOAP::SOAPFloat"],
      ["lowerCpc", "SOAP::SOAPLong"],
      ["upperAvgPosition", "SOAP::SOAPFloat"],
      ["upperClicksPerDay", "SOAP::SOAPFloat"],
      ["upperCpc", "SOAP::SOAPLong"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V13::TrafficEstimatorService::KeywordType", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordTrafficRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordTrafficRequest"),
    :schema_element => [
      ["keywordText", "SOAP::SOAPString"],
      ["keywordType", "AdwordsApi::V13::TrafficEstimatorService::KeywordType"],
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdwordsApi::V13::TrafficEstimatorService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdwordsApi::V13::TrafficEstimatorService::Circle[]", [1, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordTraffic,
    :schema_type => XSD::QName.new(NsV13, "KeywordTraffic")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::AdGroupEstimate,
    :schema_type => XSD::QName.new(NsV13, "AdGroupEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["keywordEstimates", "AdwordsApi::V13::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::AdGroupRequest,
    :schema_type => XSD::QName.new(NsV13, "AdGroupRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["keywordRequests", "AdwordsApi::V13::TrafficEstimatorService::KeywordRequest[]", [1, nil]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ApiError,
    :schema_type => XSD::QName.new(NsV13, "ApiError"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["detail", "SOAP::SOAPString"],
      ["field", "SOAP::SOAPString", [0, 1]],
      ["index", "SOAP::SOAPInt"],
      ["isExemptable", "SOAP::SOAPBoolean"],
      ["textIndex", "SOAP::SOAPInt", [0, 1]],
      ["textLength", "SOAP::SOAPInt", [0, 1]],
      ["trigger", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CampaignEstimate,
    :schema_type => XSD::QName.new(NsV13, "CampaignEstimate"),
    :schema_element => [
      ["adGroupEstimates", "AdwordsApi::V13::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]],
      ["id", "SOAP::SOAPInt", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CampaignRequest,
    :schema_type => XSD::QName.new(NsV13, "CampaignRequest"),
    :schema_element => [
      ["adGroupRequests", "AdwordsApi::V13::TrafficEstimatorService::AdGroupRequest[]", [1, nil]],
      ["geoTargeting", "AdwordsApi::V13::TrafficEstimatorService::GeoTarget", [0, 1]],
      ["id", "SOAP::SOAPInt", [0, 1]],
      ["languageTargeting", "AdwordsApi::V13::TrafficEstimatorService::LanguageTarget", [0, 1]],
      ["networkTargeting", "AdwordsApi::V13::TrafficEstimatorService::NetworkTarget", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::Circle,
    :schema_type => XSD::QName.new(NsV13, "Circle"),
    :schema_element => [
      ["latitudeMicroDegrees", "SOAP::SOAPInt"],
      ["longitudeMicroDegrees", "SOAP::SOAPInt"],
      ["radiusMeters", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CityTargets,
    :schema_type => XSD::QName.new(NsV13, "CityTargets"),
    :schema_element => [
      ["cities", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCities", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CountryTargets,
    :schema_type => XSD::QName.new(NsV13, "CountryTargets"),
    :schema_element => [
      ["countries", "SOAP::SOAPString[]", [0, nil]],
      ["excludedCountries", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::GeoTarget,
    :schema_type => XSD::QName.new(NsV13, "GeoTarget"),
    :schema_element => [
      ["cityTargets", "AdwordsApi::V13::TrafficEstimatorService::CityTargets", [0, 1]],
      ["countryTargets", "AdwordsApi::V13::TrafficEstimatorService::CountryTargets", [0, 1]],
      ["metroTargets", "AdwordsApi::V13::TrafficEstimatorService::MetroTargets", [0, 1]],
      ["proximityTargets", "AdwordsApi::V13::TrafficEstimatorService::ProximityTargets", [0, 1]],
      ["regionTargets", "AdwordsApi::V13::TrafficEstimatorService::RegionTargets", [0, 1]],
      ["targetAll", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordEstimate,
    :schema_type => XSD::QName.new(NsV13, "KeywordEstimate"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["lowerAvgPosition", "SOAP::SOAPFloat"],
      ["lowerClicksPerDay", "SOAP::SOAPFloat"],
      ["lowerCpc", "SOAP::SOAPLong"],
      ["upperAvgPosition", "SOAP::SOAPFloat"],
      ["upperClicksPerDay", "SOAP::SOAPFloat"],
      ["upperCpc", "SOAP::SOAPLong"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordRequest"),
    :schema_element => [
      ["id", "SOAP::SOAPLong", [0, 1]],
      ["maxCpc", "SOAP::SOAPLong", [0, 1]],
      ["negative", "SOAP::SOAPBoolean", [0, 1]],
      ["text", "SOAP::SOAPString", [0, 1]],
      ["type", "AdwordsApi::V13::TrafficEstimatorService::KeywordType", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordTrafficRequest,
    :schema_type => XSD::QName.new(NsV13, "KeywordTrafficRequest"),
    :schema_element => [
      ["keywordText", "SOAP::SOAPString"],
      ["keywordType", "AdwordsApi::V13::TrafficEstimatorService::KeywordType"],
      ["language", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::LanguageTarget,
    :schema_type => XSD::QName.new(NsV13, "LanguageTarget"),
    :schema_element => [
      ["languages", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::MetroTargets,
    :schema_type => XSD::QName.new(NsV13, "MetroTargets"),
    :schema_element => [
      ["excludedMetros", "SOAP::SOAPString[]", [0, nil]],
      ["metros", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdwordsApi::V13::TrafficEstimatorService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ProximityTargets,
    :schema_type => XSD::QName.new(NsV13, "ProximityTargets"),
    :schema_element => [
      ["circles", "AdwordsApi::V13::TrafficEstimatorService::Circle[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::RegionTargets,
    :schema_type => XSD::QName.new(NsV13, "RegionTargets"),
    :schema_element => [
      ["excludedRegions", "SOAP::SOAPString[]", [0, nil]],
      ["regions", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordTraffic,
    :schema_type => XSD::QName.new(NsV13, "KeywordTraffic")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::KeywordType,
    :schema_type => XSD::QName.new(NsV13, "KeywordType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CheckKeywordTraffic,
    :schema_name => XSD::QName.new(NsV13, "checkKeywordTraffic"),
    :schema_element => [
      ["requests", "AdwordsApi::V13::TrafficEstimatorService::KeywordTrafficRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::CheckKeywordTrafficResponse,
    :schema_name => XSD::QName.new(NsV13, "checkKeywordTrafficResponse"),
    :schema_element => [
      ["checkKeywordTrafficReturn", "AdwordsApi::V13::TrafficEstimatorService::KeywordTraffic[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateAdGroupList,
    :schema_name => XSD::QName.new(NsV13, "estimateAdGroupList"),
    :schema_element => [
      ["adGroupRequests", "AdwordsApi::V13::TrafficEstimatorService::AdGroupRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateAdGroupListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateAdGroupListResponse"),
    :schema_element => [
      ["estimateAdGroupListReturn", "AdwordsApi::V13::TrafficEstimatorService::AdGroupEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateCampaignList,
    :schema_name => XSD::QName.new(NsV13, "estimateCampaignList"),
    :schema_element => [
      ["campaignRequests", "AdwordsApi::V13::TrafficEstimatorService::CampaignRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateCampaignListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateCampaignListResponse"),
    :schema_element => [
      ["estimateCampaignListReturn", "AdwordsApi::V13::TrafficEstimatorService::CampaignEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateKeywordList,
    :schema_name => XSD::QName.new(NsV13, "estimateKeywordList"),
    :schema_element => [
      ["keywordRequests", "AdwordsApi::V13::TrafficEstimatorService::KeywordRequest[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::EstimateKeywordListResponse,
    :schema_name => XSD::QName.new(NsV13, "estimateKeywordListResponse"),
    :schema_element => [
      ["estimateKeywordListReturn", "AdwordsApi::V13::TrafficEstimatorService::KeywordEstimate[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::TrafficEstimatorService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::TrafficEstimatorService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

end

end; end; end
