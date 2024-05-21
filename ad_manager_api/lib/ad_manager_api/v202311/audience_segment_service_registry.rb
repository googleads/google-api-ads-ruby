# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.0 on 2024-05-21 12:50:32.

require 'ad_manager_api/errors'

module AdManagerApi; module V202311; module AudienceSegmentService
  class AudienceSegmentServiceRegistry
    AUDIENCESEGMENTSERVICE_METHODS = {:create_audience_segments=>{:input=>[{:name=>:segments, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_audience_segments_response", :fields=>[{:name=>:rval, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_audience_segments_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_audience_segments_by_statement_response", :fields=>[{:name=>:rval, :type=>"AudienceSegmentPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_audience_segment_action=>{:input=>[{:name=>:action, :type=>"AudienceSegmentAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_audience_segment_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_audience_segments=>{:input=>[{:name=>:segments, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_audience_segments_response", :fields=>[{:name=>:rval, :type=>"FirstPartyAudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    AUDIENCESEGMENTSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ActivateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :AdUnitTargeting=>{:fields=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_descendants, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ApproveAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :AudienceSegmentDataProvider=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"AudienceSegment", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FirstPartyAudienceSegment=>{:fields=>[], :abstract=>true, :base=>"AudienceSegment"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteria=>{:fields=>[{:name=>:key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:operator, :type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}], :base=>"CustomCriteriaLeaf"}, :CustomCriteriaSet=>{:fields=>[{:name=>:logical_operator, :type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:children, :type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaNode"}, :CmsMetadataCriteria=>{:fields=>[{:name=>:operator, :type=>"CmsMetadataCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:cms_metadata_value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :CustomTargetingError=>{:fields=>[{:name=>:reason, :type=>"CustomTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteriaLeaf=>{:fields=>[], :abstract=>true, :base=>"CustomCriteriaNode"}, :CustomCriteriaNode=>{:fields=>[], :abstract=>true}, :AudienceSegmentCriteria=>{:fields=>[{:name=>:operator, :type=>"AudienceSegmentCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:audience_segment_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ThirdPartyAudienceSegment=>{:fields=>[{:name=>:approval_status, :type=>"AudienceSegmentApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:license_type, :type=>"LicenseType", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"AudienceSegment"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryTargeting=>{:fields=>[{:name=>:targeted_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_placement_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NonRuleBasedFirstPartyAudienceSegment=>{:fields=>[{:name=>:membership_expiration_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"FirstPartyAudienceSegment"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PopulateAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FirstPartyAudienceSegmentRule=>{:fields=>[{:name=>:inventory_rule, :type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_criteria_rule, :type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1}]}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectAudienceSegments=>{:fields=>[], :base=>"AudienceSegmentAction"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RuleBasedFirstPartyAudienceSegment=>{:fields=>[{:name=>:rule, :type=>"FirstPartyAudienceSegmentRule", :min_occurs=>0, :max_occurs=>1}], :base=>"RuleBasedFirstPartyAudienceSegmentSummary"}, :RuleBasedFirstPartyAudienceSegmentSummary=>{:fields=>[{:name=>:page_views, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:recency_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:membership_expiration_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"FirstPartyAudienceSegment"}, :AudienceSegmentAction=>{:fields=>[], :abstract=>true}, :AudienceSegment=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"AudienceSegment.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_web_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:idfa_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_id_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ppid_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:data_provider, :type=>"AudienceSegmentDataProvider", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"AudienceSegment.Type", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentError=>{:fields=>[{:name=>:reason, :type=>"AudienceSegmentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SharedAudienceSegment=>{:fields=>[], :base=>"AudienceSegment"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :AudienceSegmentApprovalStatus=>{:type=>"string", :enumerations=>["UNAPPROVED", "APPROVED", "REJECTED", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :"CustomCriteria.ComparisonOperator"=>{:type=>"string", :enumerations=>["IS", "IS_NOT"]}, :"CustomCriteriaSet.LogicalOperator"=>{:type=>"string", :enumerations=>["AND", "OR"]}, :"CmsMetadataCriteria.ComparisonOperator"=>{:type=>"string", :enumerations=>["EQUALS", "NOT_EQUALS"]}, :"CustomTargetingError.Reason"=>{:type=>"string", :enumerations=>["KEY_NOT_FOUND", "KEY_COUNT_TOO_LARGE", "KEY_NAME_DUPLICATE", "KEY_NAME_EMPTY", "KEY_NAME_INVALID_LENGTH", "KEY_NAME_INVALID_CHARS", "KEY_NAME_RESERVED", "KEY_DISPLAY_NAME_INVALID_LENGTH", "KEY_STATUS_NOT_ACTIVE", "VALUE_NOT_FOUND", "GET_VALUES_BY_STATEMENT_MUST_CONTAIN_KEY_ID", "VALUE_COUNT_FOR_KEY_TOO_LARGE", "VALUE_NAME_DUPLICATE", "VALUE_NAME_EMPTY", "VALUE_NAME_INVALID_LENGTH", "VALUE_NAME_INVALID_CHARS", "VALUE_DISPLAY_NAME_INVALID_LENGTH", "VALUE_MATCH_TYPE_NOT_ALLOWED", "VALUE_MATCH_TYPE_NOT_EXACT_FOR_PREDEFINED_KEY", "SUFFIX_MATCH_TYPE_NOT_ALLOWED", "CONTAINS_MATCH_TYPE_NOT_ALLOWED", "VALUE_STATUS_NOT_ACTIVE", "KEY_WITH_MISSING_VALUES", "INVALID_VALUE_FOR_KEY", "CANNOT_OR_DIFFERENT_KEYS", "INVALID_TARGETING_EXPRESSION", "DELETED_KEY_CANNOT_BE_USED_FOR_TARGETING", "DELETED_VALUE_CANNOT_BE_USED_FOR_TARGETING", "VIDEO_BROWSE_BY_KEY_CANNOT_BE_USED_FOR_CUSTOM_TARGETING", "CANNOT_DELETE_CUSTOM_KEY_USED_IN_CONTENT_METADATA_MAPPING", "CANNOT_DELETE_CUSTOM_VALUE_USED_IN_CONTENT_METADATA_MAPPING", "CANNOT_DELETE_CUSTOM_KEY_USED_IN_PARTNER_ASSIGNMENT_TARGETING", "CANNOT_DELETE_CUSTOM_VALUE_USED_IN_PARTNER_ASSIGNMENT_TARGETING", "CANNOT_TARGET_AUDIENCE_SEGMENT", "CANNOT_TARGET_THIRD_PARTY_AUDIENCE_SEGMENT", "CANNOT_TARGET_INACTIVE_AUDIENCE_SEGMENT", "INVALID_AUDIENCE_SEGMENTS", "CANNOT_TARGET_MAPPED_METADATA", "ONLY_APPROVED_AUDIENCE_SEGMENTS_CAN_BE_TARGETED", "UNKNOWN"]}, :"AudienceSegmentCriteria.ComparisonOperator"=>{:type=>"string", :enumerations=>["IS", "IS_NOT"]}, :"EntityChildrenLimitReachedError.Reason"=>{:type=>"string", :enumerations=>["LINE_ITEM_LIMIT_FOR_ORDER_REACHED", "CREATIVE_ASSOCIATION_LIMIT_FOR_LINE_ITEM_REACHED", "AD_UNIT_LIMIT_FOR_PLACEMENT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_LINE_ITEM_REACHED", "TARGETING_EXPRESSION_SIZE_LIMIT_REACHED", "CUSTOM_TARGETING_VALUES_FOR_KEY_LIMIT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_CREATIVES_ON_LINE_ITEM_REACHED", "ATTACHMENT_LIMIT_FOR_PROPOSAL_REACHED", "PROPOSAL_LINE_ITEM_LIMIT_FOR_PROPOSAL_REACHED", "PRODUCT_LIMIT_FOR_PRODUCT_PACKAGE_REACHED", "PRODUCT_TEMPLATE_AND_PRODUCT_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PRODUCT_PACKAGE_ITEM_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PREMIUM_LIMIT_FOR_RATE_CARD_REACHED", "AD_UNIT_LIMIT_FOR_AD_EXCLUSION_RULE_TARGETING_REACHED", "NATIVE_STYLE_LIMIT_FOR_NATIVE_AD_FORMAT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_PRESENTATION_ASSIGNMENT_REACHED", "UNKNOWN"]}, :"EntityLimitReachedError.Reason"=>{:type=>"string", :enumerations=>["CUSTOM_TARGETING_VALUES_LIMIT_REACHED", "AD_EXCLUSION_RULES_LIMIT_REACHED", "FIRST_PARTY_AUDIENCE_SEGMENTS_LIMIT_REACHED", "PLACEMENTS_LIMIT_REACHED", "LINE_ITEMS_LIMIT_REACHED", "ACTIVE_LINE_ITEMS_LIMIT_REACHED", "DAI_ENCODING_PROFILES_LIMIT_REACHED", "TRAFFIC_FORECAST_SEGMENTS_LIMIT_REACHED", "FORECAST_ADJUSTMENTS_LIMIT_REACHED", "ACTIVE_EXPERIMENTS_LIMIT_REACHED", "SITES_LIMIT_REACHED", "UNKNOWN"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :LicenseType=>{:type=>"string", :enumerations=>["DIRECT_LICENSE", "GLOBAL_LICENSE", "UNKNOWN"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"AudienceSegment.Type"=>{:type=>"string", :enumerations=>["FIRST_PARTY", "SHARED", "THIRD_PARTY", "UNKNOWN"]}, :"AudienceSegment.Status"=>{:type=>"string", :enumerations=>["UNKNOWN", "ACTIVE", "INACTIVE", "UNUSED"]}, :"AudienceSegmentError.Reason"=>{:type=>"string", :enumerations=>["FIRST_PARTY_AUDIENCE_SEGMENT_NOT_SUPPORTED", "ONLY_RULE_BASED_FIRST_PARTY_AUDIENCE_SEGMENTS_CAN_BE_CREATED", "AUDIENCE_SEGMENT_ID_NOT_FOUND", "INVALID_AUDIENCE_SEGMENT_RULE", "AUDIENCE_SEGMENT_RULE_TOO_LONG", "INVALID_AUDIENCE_SEGMENT_NAME", "DUPLICATE_AUDIENCE_SEGMENT_NAME", "INVALID_AUDIENCE_SEGMENT_DESCRIPTION", "INVALID_AUDIENCE_SEGMENT_PAGEVIEWS", "INVALID_AUDIENCE_SEGMENT_RECENCY", "INVALID_AUDIENCE_SEGMENT_MEMBERSHIP_EXPIRATION", "INVALID_AUDIENCE_SEGMENT_CUSTOM_KEY_NAME", "INVALID_AUDIENCE_SEGMENT_CUSTOM_VALUE_NAME", "INVALID_AUDIENCE_SEGMENT_CUSTOM_VALUE_MATCH_TYPE", "INVALID_NESTED_FIRST_PARTY_AUDIENCE_SEGMENT", "SHARED_SELLING_PARTNER_ROOT_CANNOT_BE_INCLUDED", "INVALID_NESTED_THIRD_PARTY_AUDIENCE_SEGMENT", "INACTIVE_NESTED_AUDIENCE_SEGMENT", "AUDIENCE_SEGMENT_GLOBAL_LICENSE_ERROR", "SEGMENT_VIOLATED_POLICY", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}}
    AUDIENCESEGMENTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return AUDIENCESEGMENTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return AUDIENCESEGMENTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return AUDIENCESEGMENTSERVICE_NAMESPACES[index]
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
      super(exception_fault, AudienceSegmentServiceRegistry)
    end
  end
end; end; end
