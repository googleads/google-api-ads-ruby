# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.1.0 on 2024-11-13 15:21:29.

require 'ad_manager_api/errors'

module AdManagerApi; module V202405; module CompanyService
  class CompanyServiceRegistry
    COMPANYSERVICE_METHODS = {:create_companies=>{:input=>[{:name=>:companies, :type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_companies_response", :fields=>[{:name=>:rval, :type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_companies_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_companies_by_statement_response", :fields=>[{:name=>:rval, :type=>"CompanyPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_company_action=>{:input=>[{:name=>:company_action, :type=>"CompanyAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_company_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_companies=>{:input=>[{:name=>:companies, :type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_companies_response", :fields=>[{:name=>:rval, :type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    COMPANYSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ChildPublisher=>{:fields=>[{:name=>:approved_delegation_type, :type=>"DelegationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposed_delegation_type, :type=>"DelegationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"DelegationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_status, :type=>"AccountStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:child_network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:seller_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposed_revenue_share_millipercent, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:onboarding_tasks, :type=>"OnboardingTask", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CompanyAction=>{:fields=>[], :abstract=>true}, :CompanyCreditStatusError=>{:fields=>[{:name=>:reason, :type=>"CompanyCreditStatusError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Company=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"Company.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:address, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:email, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:fax_phone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_phone, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:credit_status, :type=>"Company.CreditStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:primary_contact_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:third_party_company_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:child_publisher, :type=>"ChildPublisher", :min_occurs=>0, :max_occurs=>1}, {:name=>:viewability_provider, :type=>"ViewabilityProvider", :min_occurs=>0, :max_occurs=>1}]}, :CompanyError=>{:fields=>[{:name=>:reason, :type=>"CompanyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CompanyPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Company", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CrossSellError=>{:fields=>[{:name=>:reason, :type=>"CrossSellError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ReInviteAction=>{:fields=>[{:name=>:proposed_delegation_type, :type=>"DelegationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposed_revenue_share_millipercent, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposed_email, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"CompanyAction"}, :EndAgreementAction=>{:fields=>[], :base=>"CompanyAction"}, :ExchangeSignupApiError=>{:fields=>[{:name=>:reason, :type=>"ExchangeSignupApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidEmailError=>{:fields=>[{:name=>:reason, :type=>"InvalidEmailError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryClientApiError=>{:fields=>[{:name=>:reason, :type=>"InventoryClientApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :McmError=>{:fields=>[{:name=>:reason, :type=>"McmError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NetworkError=>{:fields=>[{:name=>:reason, :type=>"NetworkError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RegExError=>{:fields=>[{:name=>:reason, :type=>"RegExError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ResendInvitationAction=>{:fields=>[], :base=>"CompanyAction"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SiteError=>{:fields=>[{:name=>:reason, :type=>"SiteError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :ViewabilityProvider=>{:fields=>[{:name=>:vendor_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:verification_script_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:verification_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:verification_rejection_tracker_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DelegationStatus=>{:type=>"string", :enumerations=>["UNKNOWN", "APPROVED", "PENDING", "REJECTED", "WITHDRAWN"]}, :DelegationType=>{:type=>"string", :enumerations=>["UNKNOWN", "MANAGE_ACCOUNT", "MANAGE_INVENTORY"]}, :AccountStatus=>{:type=>"string", :enumerations=>["UNKNOWN", "INVITED", "DECLINED", "PENDING_GOOGLE_APPROVAL", "APPROVED", "CLOSED_POLICY_VIOLATION", "CLOSED_INVALID_ACTIVITY", "CLOSED_BY_PUBLISHER", "DISAPPROVED_INELIGIBLE", "DISAPPROVED_DUPLICATE_ACCOUNT", "EXPIRED", "INACTIVE", "DEACTIVATED_BY_AD_MANAGER"]}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :"CompanyCreditStatusError.Reason"=>{:type=>"string", :enumerations=>["COMPANY_CREDIT_STATUS_CHANGE_NOT_ALLOWED", "CANNOT_USE_CREDIT_STATUS_SETTING", "CANNOT_USE_ADVANCED_CREDIT_STATUS_SETTING", "UNACCEPTABLE_COMPANY_CREDIT_STATUS_FOR_ORDER", "UNACCEPTABLE_COMPANY_CREDIT_STATUS_FOR_LINE_ITEM", "CANNOT_BLOCK_COMPANY_TOO_MANY_APPROVED_ORDERS", "UNKNOWN"]}, :"Company.CreditStatus"=>{:type=>"string", :enumerations=>["ACTIVE", "ON_HOLD", "CREDIT_STOP", "INACTIVE", "BLOCKED"]}, :"Company.Type"=>{:type=>"string", :enumerations=>["HOUSE_ADVERTISER", "HOUSE_AGENCY", "ADVERTISER", "AGENCY", "AD_NETWORK", "PARTNER", "CHILD_PUBLISHER", "VIEWABILITY_PROVIDER", "UNKNOWN"]}, :"CompanyError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_SET_THIRD_PARTY_COMPANY_DUE_TO_TYPE", "CANNOT_UPDATE_COMPANY_TYPE", "INVALID_COMPANY_TYPE", "PRIMARY_CONTACT_DOES_NOT_BELONG_TO_THIS_COMPANY", "THIRD_PARTY_STATS_PROVIDER_IS_WRONG_ROLE_TYPE", "INVALID_LABEL_ASSOCIATION", "INVALID_COMPANY_TYPE_FOR_DEFAULT_BILLING_SETTING", "INVALID_DEFAULT_BILLING_SETTING", "COMPANY_HAS_ACTIVE_SHARE_ASSIGNMENTS", "UNKNOWN"]}, :"CrossSellError.Reason"=>{:type=>"string", :enumerations=>["COMPANY_IS_NOT_DISTRIBUTION_PARTNER", "CHANGING_PARTNER_NETWORK_IS_NOT_SUPPORTED", "MISSING_DISTRIBUTOR_PARTNER_NAME", "DISTRIBUTOR_NETWORK_MISSING_PUBLISHER_FEATURE", "CONTENT_PROVIDER_NETWORK_MISSING_PUBLISHER_FEATURE", "INVALID_DISTRIBUTOR_PARTNER_NAME", "INVALID_CONTENT_PROVIDER_NETWORK", "CONTENT_PROVIDER_NETWORK_CANNOT_BE_ACTIVE_NETWORK", "CONTENT_PROVIDER_NETWORK_ALREADY_ENABLED_FOR_CROSS_SELLING", "DISTRIBUTOR_RULE_VIOLATION_ERROR", "DISTRIBUTOR_RULE_VIOLATION_WARNING", "UNKNOWN"]}, :"CustomFieldValueError.Reason"=>{:type=>"string", :enumerations=>["CUSTOM_FIELD_NOT_FOUND", "CUSTOM_FIELD_INACTIVE", "CUSTOM_FIELD_OPTION_NOT_FOUND", "INVALID_ENTITY_TYPE", "UNKNOWN"]}, :"ExchangeSignupApiError.Reason"=>{:type=>"string", :enumerations=>["ADSENSE_ACCOUNT_CREATION_ERROR", "ADSENSE_ACCOUNT_ALREADY_HAS_EXCHANGE", "FAILED_TO_ADD_WEBSITE_TO_PROPERTY", "FAILED_TO_CREATE_LINK_FOR_NEW_ACCOUNT", "CANNOT_CREATE_NEW_ACCOUNT_FOR_MAPPED_CUSTOMER", "FAILED_TO_CREATE_EXCHANGE_SETTINGS", "DUPLICATE_PRODUCT_TYPE", "INVALID_SIGNUP_PRODUCT", "UNKNOWN_PRODUCT", "BAD_SITE_VERIFICATION_UPDATE_REQUEST", "NO_EXCHANGE_ACCOUNT", "SINGLE_SYNDICATION_PRODUCT", "ACCOUNT_NOT_YET_READY", "MULTIPLE_ADSENSE_ACCOUNTS_NOT_ALLOWED", "MISSING_LEGAL_ENTITY_NAME", "MISSING_ACTIVE_BILLING_PROFILE", "UNKNOWN"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"InvalidEmailError.Reason"=>{:type=>"string", :enumerations=>["INVALID_FORMAT", "UNKNOWN"]}, :"InvalidUrlError.Reason"=>{:type=>"string", :enumerations=>["ILLEGAL_CHARACTERS", "INVALID_FORMAT", "INSECURE_SCHEME", "NO_SCHEME", "UNKNOWN"]}, :"InventoryClientApiError.Reason"=>{:type=>"string", :enumerations=>["ACCESS_DENIED", "ADSENSE_AUTH_ERROR", "ADSENSE_RPC_ERROR", "DOMAIN_NO_SCHEME", "DOMAIN_INVALID_HOST", "DOMAIN_INVALID_TLD", "DOMAIN_ONE_STRING_AND_PUBLIC_SUFFIX", "DOMAIN_INVALID_INPUT", "DOMAIN_NO_PUBLIC_SUFFIX", "UNKNOWN_ERROR"]}, :"LabelEntityAssociationError.Reason"=>{:type=>"string", :enumerations=>["DUPLICATE_ASSOCIATION", "INVALID_ASSOCIATION", "NEGATION_NOT_ALLOWED", "DUPLICATE_ASSOCIATION_WITH_NEGATION", "UNKNOWN"]}, :"McmError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "DUPLICATE_CHILD_PUBLISHER_NETWORK_CODE", "DUPLICATE_CHILD_PUBLISHER_ACTIVE_EMAIL"]}, :"NetworkError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "MULTI_CURRENCY_NOT_SUPPORTED", "UNSUPPORTED_CURRENCY", "NETWORK_CURRENCY_CANNOT_BE_SAME_AS_SECONDARY", "DEPRECATED_DATA_TRANSFER_CONFIG_EVENT_TYPE", "DELEGATION_CHILD_NETWORK_CANNOT_BECOME_A_PARENT", "DELEGATION_PARENT_NETWORK_CANNOT_BECOME_A_CHILD", "CANNOT_ADD_SAME_NETWORK_AS_DELEGATION_CHILD", "MAX_APPROVED_DELEGATION_CHILD_NETWORKS_EXCEEDED", "MAX_PENDING_DELEGATION_CHILD_NETWORKS_EXCEEDED", "CHILD_NETWORK_ALREADY_EXISTS", "CHILD_NETWORK_CANNOT_BE_DISAPPROVED", "IN_PARENT_DELEGATION_UNSUPPORTED_FOR_NETWORK", "ERROR_REENABLING_AD_EXCHANGE_ON_MCM_CHILD", "ERROR_SETTING_SITE_SERVING_MODE_ON_MCM_CHILD"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NOT_NULL", "UNKNOWN"]}, :OnboardingTask=>{:type=>"string", :enumerations=>["UNKNOWN", "BILLING_PROFILE_CREATION", "PHONE_PIN_VERIFICATION", "AD_MANAGER_ACCOUNT_SETUP"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, :"RegExError.Reason"=>{:type=>"string", :enumerations=>["INVALID", "NULL", "UNKNOWN"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"RequiredNumberError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "TOO_LARGE_WITH_DETAILS", "TOO_SMALL_WITH_DETAILS", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :"SiteError.Reason"=>{:type=>"string", :enumerations=>["INVALID_CHILD_NETWORK_CODE", "CANNOT_ARCHIVE_SITE_WITH_SUBSITES", "INVALID_URL_FOR_SITE", "MULTIPLE_UPDATES_FOR_SAME_SITE", "TOO_MANY_SITES_PER_REVIEW_REQUEST", "TOO_MANY_REVIEW_REQUESTS_FOR_SITE", "INVALID_APPROVAL_STATUS_FOR_REVIEW", "UNKNOWN"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}, :"TeamError.Reason"=>{:type=>"string", :enumerations=>["ENTITY_NOT_ON_USERS_TEAMS", "AD_UNITS_NOT_ON_ORDER_TEAMS", "PLACEMENTS_NOT_ON_ORDER_TEAMS", "MISSING_USERS_TEAM", "ALL_TEAM_ASSOCIATION_NOT_ALLOWED", "INVALID_TEAM_ASSIGNMENT", "CANNOT_UPDATE_INACTIVE_TEAM", "UNKNOWN"]}}
    COMPANYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return COMPANYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return COMPANYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return COMPANYSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdManagerApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, CompanyServiceRegistry)
    end
  end
end; end; end
