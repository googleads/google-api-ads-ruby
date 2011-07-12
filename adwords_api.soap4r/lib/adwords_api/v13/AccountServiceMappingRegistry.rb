require 'adwords_api/v13/AccountService'
require 'soap/mapping'

module AdwordsApi; module V13; module AccountService

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsV13 = "https://adwords.google.com/api/adwords/v13"

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::AccountInfo,
    :schema_type => XSD::QName.new(NsV13, "AccountInfo"),
    :schema_element => [
      ["billingAddress", "AdwordsApi::V13::AccountService::Address"],
      ["currencyCode", "SOAP::SOAPString"],
      ["customerId", "SOAP::SOAPLong", [0, 1]],
      ["defaultNetworkTargeting", "AdwordsApi::V13::AccountService::NetworkTarget"],
      ["descriptiveName", "SOAP::SOAPString"],
      ["emailPromotionsPreferences", "AdwordsApi::V13::AccountService::EmailPromotionsPreferences"],
      ["languagePreference", "SOAP::SOAPString"],
      ["primaryAddress", "AdwordsApi::V13::AccountService::Address"],
      ["primaryBusinessCategory", "SOAP::SOAPString"],
      ["timeZoneEffectiveDate", "SOAP::SOAPLong", [0, 1]],
      ["timeZoneId", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::Address,
    :schema_type => XSD::QName.new(NsV13, "Address"),
    :schema_element => [
      ["addressLine1", "SOAP::SOAPString"],
      ["addressLine2", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["companyName", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["faxNumber", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["state", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::ApiError,
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
    :class => AdwordsApi::V13::AccountService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::ClientAccountInfo,
    :schema_type => XSD::QName.new(NsV13, "ClientAccountInfo"),
    :schema_element => [
      ["emailAddress", "SOAP::SOAPString"],
      ["isCustomerManager", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::EmailPromotionsPreferences,
    :schema_type => XSD::QName.new(NsV13, "EmailPromotionsPreferences"),
    :schema_element => [
      ["accountPerformanceEnabled", "SOAP::SOAPBoolean"],
      ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"],
      ["marketResearchEnabled", "SOAP::SOAPBoolean"],
      ["newsletterEnabled", "SOAP::SOAPBoolean"],
      ["promotionsEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlert,
    :schema_type => XSD::QName.new(NsV13, "MccAlert"),
    :schema_element => [
      ["clientCompanyName", "SOAP::SOAPString"],
      ["clientCustomerId", "SOAP::SOAPLong"],
      ["clientLogin", "SOAP::SOAPString"],
      ["clientName", "SOAP::SOAPString"],
      ["priority", "AdwordsApi::V13::AccountService::MccAlertPriority"],
      ["triggerTime", "SOAP::SOAPDateTime"],
      ["type", "AdwordsApi::V13::AccountService::MccAlertType"]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdwordsApi::V13::AccountService::NetworkType[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlertPriority,
    :schema_type => XSD::QName.new(NsV13, "MccAlertPriority")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlertType,
    :schema_type => XSD::QName.new(NsV13, "MccAlertType")
  )

  EncodedRegistry.register(
    :class => AdwordsApi::V13::AccountService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::AccountInfo,
    :schema_type => XSD::QName.new(NsV13, "AccountInfo"),
    :schema_element => [
      ["billingAddress", "AdwordsApi::V13::AccountService::Address"],
      ["currencyCode", "SOAP::SOAPString"],
      ["customerId", "SOAP::SOAPLong", [0, 1]],
      ["defaultNetworkTargeting", "AdwordsApi::V13::AccountService::NetworkTarget"],
      ["descriptiveName", "SOAP::SOAPString"],
      ["emailPromotionsPreferences", "AdwordsApi::V13::AccountService::EmailPromotionsPreferences"],
      ["languagePreference", "SOAP::SOAPString"],
      ["primaryAddress", "AdwordsApi::V13::AccountService::Address"],
      ["primaryBusinessCategory", "SOAP::SOAPString"],
      ["timeZoneEffectiveDate", "SOAP::SOAPLong", [0, 1]],
      ["timeZoneId", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::Address,
    :schema_type => XSD::QName.new(NsV13, "Address"),
    :schema_element => [
      ["addressLine1", "SOAP::SOAPString"],
      ["addressLine2", "SOAP::SOAPString"],
      ["city", "SOAP::SOAPString"],
      ["companyName", "SOAP::SOAPString"],
      ["countryCode", "SOAP::SOAPString"],
      ["emailAddress", "SOAP::SOAPString"],
      ["faxNumber", "SOAP::SOAPString"],
      ["name", "SOAP::SOAPString"],
      ["phoneNumber", "SOAP::SOAPString"],
      ["postalCode", "SOAP::SOAPString"],
      ["state", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::ApiError,
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
    :class => AdwordsApi::V13::AccountService::ApiException,
    :schema_type => XSD::QName.new(NsV13, "ApiException"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::ClientAccountInfo,
    :schema_type => XSD::QName.new(NsV13, "ClientAccountInfo"),
    :schema_element => [
      ["emailAddress", "SOAP::SOAPString"],
      ["isCustomerManager", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::EmailPromotionsPreferences,
    :schema_type => XSD::QName.new(NsV13, "EmailPromotionsPreferences"),
    :schema_element => [
      ["accountPerformanceEnabled", "SOAP::SOAPBoolean"],
      ["disapprovedAdsEnabled", "SOAP::SOAPBoolean"],
      ["marketResearchEnabled", "SOAP::SOAPBoolean"],
      ["newsletterEnabled", "SOAP::SOAPBoolean"],
      ["promotionsEnabled", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlert,
    :schema_type => XSD::QName.new(NsV13, "MccAlert"),
    :schema_element => [
      ["clientCompanyName", "SOAP::SOAPString"],
      ["clientCustomerId", "SOAP::SOAPLong"],
      ["clientLogin", "SOAP::SOAPString"],
      ["clientName", "SOAP::SOAPString"],
      ["priority", "AdwordsApi::V13::AccountService::MccAlertPriority"],
      ["triggerTime", "SOAP::SOAPDateTime"],
      ["type", "AdwordsApi::V13::AccountService::MccAlertType"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::NetworkTarget,
    :schema_type => XSD::QName.new(NsV13, "NetworkTarget"),
    :schema_element => [
      ["networkTypes", "AdwordsApi::V13::AccountService::NetworkType[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlertPriority,
    :schema_type => XSD::QName.new(NsV13, "MccAlertPriority")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::MccAlertType,
    :schema_type => XSD::QName.new(NsV13, "MccAlertType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::NetworkType,
    :schema_type => XSD::QName.new(NsV13, "NetworkType")
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::ApiException,
    :schema_name => XSD::QName.new(NsV13, "fault"),
    :schema_element => [
      ["code", "SOAP::SOAPInt"],
      ["errors", "AdwordsApi::V13::AccountService::ApiError[]", [1, nil]],
      ["internal", "SOAP::SOAPBoolean"],
      ["message", "SOAP::SOAPString"],
      ["trigger", "SOAP::SOAPString"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetAccountInfo,
    :schema_name => XSD::QName.new(NsV13, "getAccountInfo"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetAccountInfoResponse,
    :schema_name => XSD::QName.new(NsV13, "getAccountInfoResponse"),
    :schema_element => [
      ["getAccountInfoReturn", "AdwordsApi::V13::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetClientAccountInfos,
    :schema_name => XSD::QName.new(NsV13, "getClientAccountInfos"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetClientAccountInfosResponse,
    :schema_name => XSD::QName.new(NsV13, "getClientAccountInfosResponse"),
    :schema_element => [
      ["getClientAccountInfosReturn", "AdwordsApi::V13::AccountService::ClientAccountInfo[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetClientAccounts,
    :schema_name => XSD::QName.new(NsV13, "getClientAccounts"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetClientAccountsResponse,
    :schema_name => XSD::QName.new(NsV13, "getClientAccountsResponse"),
    :schema_element => [
      ["getClientAccountsReturn", "SOAP::SOAPString[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetMccAlerts,
    :schema_name => XSD::QName.new(NsV13, "getMccAlerts"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::GetMccAlertsResponse,
    :schema_name => XSD::QName.new(NsV13, "getMccAlertsResponse"),
    :schema_element => [
      ["getMccAlertsReturn", "AdwordsApi::V13::AccountService::MccAlert[]", [1, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::UpdateAccountInfo,
    :schema_name => XSD::QName.new(NsV13, "updateAccountInfo"),
    :schema_element => [
      ["accountInfo", "AdwordsApi::V13::AccountService::AccountInfo"]
    ]
  )

  LiteralRegistry.register(
    :class => AdwordsApi::V13::AccountService::UpdateAccountInfoResponse,
    :schema_name => XSD::QName.new(NsV13, "updateAccountInfoResponse"),
    :schema_element => []
  )

end

end; end; end
