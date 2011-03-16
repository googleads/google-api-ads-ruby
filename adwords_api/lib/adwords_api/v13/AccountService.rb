require 'xsd/qname'

module AdwordsApi; module V13; module AccountService


# AccountInfo
# - billingAddress - AdwordsApi::V13::AccountService::Address
# - currencyCode - SOAP::SOAPString
# - customerId - SOAP::SOAPLong
# - defaultNetworkTargeting - AdwordsApi::V13::AccountService::NetworkTarget
# - descriptiveName - SOAP::SOAPString
# - emailPromotionsPreferences - AdwordsApi::V13::AccountService::EmailPromotionsPreferences
# - languagePreference - SOAP::SOAPString
# - primaryAddress - AdwordsApi::V13::AccountService::Address
# - primaryBusinessCategory - SOAP::SOAPString
# - timeZoneEffectiveDate - SOAP::SOAPLong
# - timeZoneId - SOAP::SOAPString
class AccountInfo
  attr_accessor :billingAddress
  attr_accessor :currencyCode
  attr_accessor :customerId
  attr_accessor :defaultNetworkTargeting
  attr_accessor :descriptiveName
  attr_accessor :emailPromotionsPreferences
  attr_accessor :languagePreference
  attr_accessor :primaryAddress
  attr_accessor :primaryBusinessCategory
  attr_accessor :timeZoneEffectiveDate
  attr_accessor :timeZoneId

  def initialize(billingAddress = nil, currencyCode = nil, customerId = nil, defaultNetworkTargeting = nil, descriptiveName = nil, emailPromotionsPreferences = nil, languagePreference = nil, primaryAddress = nil, primaryBusinessCategory = nil, timeZoneEffectiveDate = nil, timeZoneId = nil)
    @billingAddress = billingAddress
    @currencyCode = currencyCode
    @customerId = customerId
    @defaultNetworkTargeting = defaultNetworkTargeting
    @descriptiveName = descriptiveName
    @emailPromotionsPreferences = emailPromotionsPreferences
    @languagePreference = languagePreference
    @primaryAddress = primaryAddress
    @primaryBusinessCategory = primaryBusinessCategory
    @timeZoneEffectiveDate = timeZoneEffectiveDate
    @timeZoneId = timeZoneId
  end
end

# Address
# - addressLine1 - SOAP::SOAPString
# - addressLine2 - SOAP::SOAPString
# - city - SOAP::SOAPString
# - companyName - SOAP::SOAPString
# - countryCode - SOAP::SOAPString
# - emailAddress - SOAP::SOAPString
# - faxNumber - SOAP::SOAPString
# - name - SOAP::SOAPString
# - phoneNumber - SOAP::SOAPString
# - postalCode - SOAP::SOAPString
# - state - SOAP::SOAPString
class Address
  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :city
  attr_accessor :companyName
  attr_accessor :countryCode
  attr_accessor :emailAddress
  attr_accessor :faxNumber
  attr_accessor :name
  attr_accessor :phoneNumber
  attr_accessor :postalCode
  attr_accessor :state

  def initialize(addressLine1 = nil, addressLine2 = nil, city = nil, companyName = nil, countryCode = nil, emailAddress = nil, faxNumber = nil, name = nil, phoneNumber = nil, postalCode = nil, state = nil)
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @city = city
    @companyName = companyName
    @countryCode = countryCode
    @emailAddress = emailAddress
    @faxNumber = faxNumber
    @name = name
    @phoneNumber = phoneNumber
    @postalCode = postalCode
    @state = state
  end
end

# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
class ApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :field
  attr_accessor :index
  attr_accessor :isExemptable
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger

  def initialize(code = nil, detail = nil, field = nil, index = nil, isExemptable = nil, textIndex = nil, textLength = nil, trigger = nil)
    @code = code
    @detail = detail
    @field = field
    @index = index
    @isExemptable = isExemptable
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
  end
end

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdwordsApi::V13::AccountService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
class ApiException
  attr_accessor :code
  attr_accessor :errors
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger

  def initialize(code = nil, errors = [], internal = nil, message = nil, trigger = nil)
    @code = code
    @errors = errors
    @internal = internal
    @message = message
    @trigger = trigger
  end
end

# ClientAccountInfo
# - emailAddress - SOAP::SOAPString
# - isCustomerManager - SOAP::SOAPBoolean
class ClientAccountInfo
  attr_accessor :emailAddress
  attr_accessor :isCustomerManager

  def initialize(emailAddress = nil, isCustomerManager = nil)
    @emailAddress = emailAddress
    @isCustomerManager = isCustomerManager
  end
end

# EmailPromotionsPreferences
# - accountPerformanceEnabled - SOAP::SOAPBoolean
# - disapprovedAdsEnabled - SOAP::SOAPBoolean
# - marketResearchEnabled - SOAP::SOAPBoolean
# - newsletterEnabled - SOAP::SOAPBoolean
# - promotionsEnabled - SOAP::SOAPBoolean
class EmailPromotionsPreferences
  attr_accessor :accountPerformanceEnabled
  attr_accessor :disapprovedAdsEnabled
  attr_accessor :marketResearchEnabled
  attr_accessor :newsletterEnabled
  attr_accessor :promotionsEnabled

  def initialize(accountPerformanceEnabled = nil, disapprovedAdsEnabled = nil, marketResearchEnabled = nil, newsletterEnabled = nil, promotionsEnabled = nil)
    @accountPerformanceEnabled = accountPerformanceEnabled
    @disapprovedAdsEnabled = disapprovedAdsEnabled
    @marketResearchEnabled = marketResearchEnabled
    @newsletterEnabled = newsletterEnabled
    @promotionsEnabled = promotionsEnabled
  end
end

# MccAlert
# - clientCompanyName - SOAP::SOAPString
# - clientCustomerId - SOAP::SOAPLong
# - clientLogin - SOAP::SOAPString
# - clientName - SOAP::SOAPString
# - priority - AdwordsApi::V13::AccountService::MccAlertPriority
# - triggerTime - SOAP::SOAPDateTime
# - type - AdwordsApi::V13::AccountService::MccAlertType
class MccAlert
  attr_accessor :clientCompanyName
  attr_accessor :clientCustomerId
  attr_accessor :clientLogin
  attr_accessor :clientName
  attr_accessor :priority
  attr_accessor :triggerTime
  attr_accessor :type

  def initialize(clientCompanyName = nil, clientCustomerId = nil, clientLogin = nil, clientName = nil, priority = nil, triggerTime = nil, type = nil)
    @clientCompanyName = clientCompanyName
    @clientCustomerId = clientCustomerId
    @clientLogin = clientLogin
    @clientName = clientName
    @priority = priority
    @triggerTime = triggerTime
    @type = type
  end
end

# NetworkTarget
# - networkTypes - AdwordsApi::V13::AccountService::NetworkType
class NetworkTarget
  attr_accessor :networkTypes

  def initialize(networkTypes = [])
    @networkTypes = networkTypes
  end
end

# MccAlertPriority
class MccAlertPriority < ::String
  High = MccAlertPriority.new("High")
  Low = MccAlertPriority.new("Low")
end

# MccAlertType
class MccAlertType < ::String
  AccountBudgetBurnRate = MccAlertType.new("AccountBudgetBurnRate")
  AccountBudgetEnding = MccAlertType.new("AccountBudgetEnding")
  AccountOnTarget = MccAlertType.new("AccountOnTarget")
  CampaignEnded = MccAlertType.new("CampaignEnded")
  CampaignEnding = MccAlertType.new("CampaignEnding")
  CreativeDisapproved = MccAlertType.new("CreativeDisapproved")
  CreditCardExpiring = MccAlertType.new("CreditCardExpiring")
  DeclinedPayment = MccAlertType.new("DeclinedPayment")
  KeywordBelowMinCpc = MccAlertType.new("KeywordBelowMinCpc")
  MissingBankReferenceNumber = MccAlertType.new("MissingBankReferenceNumber")
  PaymentNotEntered = MccAlertType.new("PaymentNotEntered")
end

# NetworkType
class NetworkType < ::String
  ContentNetwork = NetworkType.new("ContentNetwork")
  GoogleSearch = NetworkType.new("GoogleSearch")
  SearchNetwork = NetworkType.new("SearchNetwork")
end

# getAccountInfo
class GetAccountInfo #:nodoc: all
  def initialize
  end
end

# getAccountInfoResponse
# - getAccountInfoReturn - AdwordsApi::V13::AccountService::AccountInfo
class GetAccountInfoResponse #:nodoc: all
  attr_accessor :getAccountInfoReturn

  def initialize(getAccountInfoReturn = nil)
    @getAccountInfoReturn = getAccountInfoReturn
  end
end

# getClientAccountInfos
class GetClientAccountInfos #:nodoc: all
  def initialize
  end
end

# getClientAccountInfosResponse
# - getClientAccountInfosReturn - AdwordsApi::V13::AccountService::ClientAccountInfo
class GetClientAccountInfosResponse #:nodoc: all
  attr_accessor :getClientAccountInfosReturn

  def initialize(getClientAccountInfosReturn = [])
    @getClientAccountInfosReturn = getClientAccountInfosReturn
  end
end

# getClientAccounts
class GetClientAccounts #:nodoc: all
  def initialize
  end
end

# getClientAccountsResponse
# - getClientAccountsReturn - SOAP::SOAPString
class GetClientAccountsResponse #:nodoc: all
  attr_accessor :getClientAccountsReturn

  def initialize(getClientAccountsReturn = [])
    @getClientAccountsReturn = getClientAccountsReturn
  end
end

# getMccAlerts
class GetMccAlerts #:nodoc: all
  def initialize
  end
end

# getMccAlertsResponse
# - getMccAlertsReturn - AdwordsApi::V13::AccountService::MccAlert
class GetMccAlertsResponse #:nodoc: all
  attr_accessor :getMccAlertsReturn

  def initialize(getMccAlertsReturn = [])
    @getMccAlertsReturn = getMccAlertsReturn
  end
end

# updateAccountInfo
# - accountInfo - AdwordsApi::V13::AccountService::AccountInfo
class UpdateAccountInfo #:nodoc: all
  attr_accessor :accountInfo

  def initialize(accountInfo = nil)
    @accountInfo = accountInfo
  end
end

# updateAccountInfoResponse
class UpdateAccountInfoResponse #:nodoc: all
  def initialize
  end
end


end; end; end
