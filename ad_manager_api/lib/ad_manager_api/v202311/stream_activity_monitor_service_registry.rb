# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.1 on 2024-08-14 18:07:52.

require 'ad_manager_api/errors'

module AdManagerApi; module V202311; module StreamActivityMonitorService
  class StreamActivityMonitorServiceRegistry
    STREAMACTIVITYMONITORSERVICE_METHODS = {:get_sam_sessions_by_statement=>{:input=>[{:name=>:statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_sam_sessions_by_statement_response", :fields=>[{:name=>:rval, :type=>"SamSession", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :register_sessions_for_monitoring=>{:input=>[{:name=>:session_ids, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"register_sessions_for_monitoring_response", :fields=>[{:name=>:rval, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    STREAMACTIVITYMONITORSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :AdBreak=>{:fields=>[{:name=>:root_ad_responses, :type=>"AdResponse", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_decision_creatives, :type=>"AdDecisionCreative", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:pod_num, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:linear_absolute_pod_num, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_break_duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:filled_duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:served_duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_time_offset_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:sam_error, :type=>"SamError", :min_occurs=>0, :max_occurs=>1}, {:name=>:midroll_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:decisioned_ads, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_events, :type=>"TrackingEvent", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdDecisionCreative=>{:fields=>[{:name=>:sequence, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:slate_duration_mills, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_duration_mills, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_transcode, :type=>"CreativeTranscode", :min_occurs=>0, :max_occurs=>1}, {:name=>:google_video_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sam_error, :type=>"SamError", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_transcoded, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_dropped, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :AdResponse=>{:fields=>[{:name=>:request_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_vmap_request, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_body, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:redirect_responses, :type=>"AdResponse", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:sam_error, :type=>"SamError", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_errors, :type=>"SamError", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeTranscode=>{:fields=>[{:name=>:ad_server, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id_type, :type=>"CreativeTranscode.IdType", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LinearStreamCreateRequest=>{:fields=>[{:name=>:live_stream_event_asset_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:event_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:live_stream_event_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:event_start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:event_end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:prefetch_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:pod_trimming_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"StreamCreateRequest"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SamError=>{:fields=>[{:name=>:sam_error_type, :type=>"SamErrorType", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_details, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SamSession=>{:fields=>[{:name=>:session_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_vod_session, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:stream_create_request, :type=>"StreamCreateRequest", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_breaks, :type=>"AdBreak", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:session_duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_duration_millis, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :SamSessionError=>{:fields=>[{:name=>:reason, :type=>"SamSessionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StreamCreateRequest=>{:fields=>[{:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:reporting_type, :type=>"ReportingType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TrackingEvent=>{:fields=>[{:name=>:pings, :type=>"TrackingEvent.Ping", :min_occurs=>0, :max_occurs=>:unbounded}]}, :"TrackingEvent.Ping"=>{:fields=>[{:name=>:uri, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:has_error, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :VodStreamCreateRequest=>{:fields=>[{:name=>:content_source_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:cue_points, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"StreamCreateRequest"}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :"CreativeTranscode.IdType"=>{:type=>"string", :enumerations=>["AD_ID", "CREATIVE_ID", "CREATIVE_ADID", "UNIVERSAL_AD_ID", "MEDIA_URI", "MEDIA_URI_PATH", "CREATIVE_ADID_WITH_FALLBACK", "CANONICALIZED_MEDIA_URI", "GV_REGISTRY_ID", "UNKNOWN_ID_TYPE", "MEDIA_URI_HASH", "UNKNOWN"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, :ReportingType=>{:type=>"string", :enumerations=>["DISABLED", "CLIENT", "SERVER", "AD_MEDIA", "UNKNOWN"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :SamErrorType=>{:type=>"string", :enumerations=>["INTERNAL_ERROR", "AD_REQUEST_ERROR", "VAST_PARSE_ERROR", "UNSUPPORTED_AD_SYSTEM", "CANNOT_FIND_UNIQUE_TRANSCODE_ID", "CANNOT_FIND_MEDIA_FILE_PATH", "MISSING_INLINE_ELEMENTS", "MAX_WRAPPER_DEPTH_REACHED", "INVALID_AD_SEQUENCE_NUMBER", "FAILED_PING", "AD_TAG_PARSE_ERROR", "VMAP_PARSE_ERROR", "INVALID_VMAP_RESPONSE", "NO_AD_BREAKS_IN_VMAP", "CUSTOM_AD_SOURCE_IN_VMAP", "AD_BREAK_TYPE_NOT_SUPPORTED", "NEITHER_AD_SOURCE_NOR_TRACKING", "UNKNOWN_ERROR", "AD_POD_DROPPED_TO_MANY_AD_PODS", "AD_POD_DROPPED_EMPTY_ADS", "AD_BREAK_WITHOUT_AD_POD", "TRANSCODING_IN_PROGRESS", "UNSUPPORTED_VAST_VERSION", "AD_POD_DROPPED_BUMPER_ERROR", "NO_VALID_MEDIAFILES_FOUND", "EXCEEDS_MAX_FILLER", "SKIPPABLE_AD_NOT_SUPPORTED", "AD_REQUEST_TIMEOUT", "AD_POD_DROPPED_UNSUPPORTED_TYPE", "DUPLICATE_AD_TAG", "FOLLOW_REDIRECTS_IS_FALSE", "AD_POD_DROPPED_INCOMPATIBLE_TIMEOFFSET", "UNKNOWN"]}, :"SamSessionError.Reason"=>{:type=>"string", :enumerations=>["COULD_NOT_REGISTER_SESSION", "MALFORMED_SESSION_ID", "INVALID_SESSION_ID", "INVALID_DEBUG_KEY", "REQUEST_EXCEEDS_SESSION_LIMIT", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}}
    STREAMACTIVITYMONITORSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return STREAMACTIVITYMONITORSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return STREAMACTIVITYMONITORSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return STREAMACTIVITYMONITORSERVICE_NAMESPACES[index]
    end
  end

  class ApplicationException < AdManagerApi::Errors::ApiException
    attr_reader :message  # string
  end

  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, StreamActivityMonitorServiceRegistry)
    end
  end
end; end; end
