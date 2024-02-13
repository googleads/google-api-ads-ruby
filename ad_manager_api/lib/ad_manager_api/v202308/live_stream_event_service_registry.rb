# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2024-02-06 17:11:09.

require 'ad_manager_api/errors'

module AdManagerApi; module V202308; module LiveStreamEventService
  class LiveStreamEventServiceRegistry
    LIVESTREAMEVENTSERVICE_METHODS = {:create_live_stream_events=>{:input=>[{:name=>:live_stream_events, :type=>"LiveStreamEvent", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_live_stream_events_response", :fields=>[{:name=>:rval, :type=>"LiveStreamEvent", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :create_slates=>{:input=>[{:name=>:slates, :type=>"Slate", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_slates_response", :fields=>[{:name=>:rval, :type=>"Slate", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_live_stream_events_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_live_stream_events_by_statement_response", :fields=>[{:name=>:rval, :type=>"LiveStreamEventPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_slates_by_statement=>{:input=>[{:name=>:statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_slates_by_statement_response", :fields=>[{:name=>:rval, :type=>"SlatePage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_live_stream_event_action=>{:input=>[{:name=>:live_stream_event_action, :type=>"LiveStreamEventAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_live_stream_event_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :perform_slate_action=>{:input=>[{:name=>:slate_action, :type=>"SlateAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_slate_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_live_stream_events=>{:input=>[{:name=>:live_stream_events, :type=>"LiveStreamEvent", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_live_stream_events_response", :fields=>[{:name=>:rval, :type=>"LiveStreamEvent", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :update_slates=>{:input=>[{:name=>:slates, :type=>"Slate", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_slates_response", :fields=>[{:name=>:rval, :type=>"Slate", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    LIVESTREAMEVENTSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ActivateLiveStreamEvents=>{:fields=>[], :base=>"LiveStreamEventAction"}, :AdBreakMarkupError=>{:fields=>[{:name=>:reason, :type=>"AdBreakMarkupError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveLiveStreamEvents=>{:fields=>[], :base=>"LiveStreamEventAction"}, :ArchiveSlates=>{:fields=>[], :base=>"SlateAction"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DashBridge=>{:fields=>[{:name=>:enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :HlsSettings=>{:fields=>[{:name=>:playlist_type, :type=>"PlaylistType", :min_occurs=>0, :max_occurs=>1}, {:name=>:master_playlist_settings, :type=>"MasterPlaylistSettings", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamConditioning=>{:fields=>[{:name=>:dash_bridge, :type=>"DashBridge", :min_occurs=>0, :max_occurs=>1}]}, :LiveStreamEventAction=>{:fields=>[], :abstract=>true}, :LiveStreamEventActionError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventCdnSettingsError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventCdnSettingsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventConditioningError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventConditioningError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventCustomAssetKeyError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventCustomAssetKeyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventDateTimeError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventDateTimeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEvent=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"LiveStreamEventStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time_type, :type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:unlimited_end_date_time, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_estimated_concurrent_users, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_tags, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:asset_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:slate_creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:dvr_window_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_dai_authentication_keys, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_break_fill_type, :type=>"AdBreakFillType", :min_occurs=>0, :max_occurs=>1}, {:name=>:underfill_ad_break_fill_type, :type=>"AdBreakFillType", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_holiday_duration, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_max_filler_duration, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_filler_duration, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_durationless_ad_breaks, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:default_ad_break_duration, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:stream_create_dai_authentication_key_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:source_content_configuration_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:preroll_settings, :type=>"PrerollSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:hls_settings, :type=>"HlsSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_allowlisted_ips, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:dynamic_ad_insertion_type, :type=>"DynamicAdInsertionType", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_relative_playlist_delivery, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:streaming_format, :type=>"StreamingFormat", :min_occurs=>0, :max_occurs=>1}, {:name=>:prefetch_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:prefetch_settings, :type=>"PrefetchSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_force_close_ad_breaks, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:enable_short_segment_dropping, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_asset_key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:dai_encoding_profile_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:segment_url_authentication_key_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_break_markups, :type=>"AdBreakMarkupType", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_break_markup_types_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_serving_format, :type=>"AdServingFormat", :min_occurs=>0, :max_occurs=>1}, {:name=>:live_stream_conditioning, :type=>"LiveStreamConditioning", :min_occurs=>0, :max_occurs=>1}]}, :LiveStreamEventDvrWindowError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventDvrWindowError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"LiveStreamEvent", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LiveStreamEventPrerollSettingsError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventPrerollSettingsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LiveStreamEventSlateError=>{:fields=>[{:name=>:reason, :type=>"LiveStreamEventSlateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :MasterPlaylistSettings=>{:fields=>[{:name=>:refresh_type, :type=>"RefreshType", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PauseLiveStreamEventAds=>{:fields=>[], :base=>"LiveStreamEventAction"}, :PauseLiveStreamEvents=>{:fields=>[], :base=>"LiveStreamEventAction"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PrefetchSettings=>{:fields=>[{:name=>:initial_ad_request_duration_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :PrerollSettings=>{:fields=>[{:name=>:ad_tag, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_ad_pod_duration_seconds, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RefreshLiveStreamEventMasterPlaylists=>{:fields=>[], :base=>"LiveStreamEventAction"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SlateAction=>{:fields=>[], :abstract=>true}, :Slate=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"SlateStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:transcode_status, :type=>"TranscodeStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_source_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}]}, :SlatePage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Slate", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UnarchiveSlates=>{:fields=>[], :base=>"SlateAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :VideoAdTagError=>{:fields=>[{:name=>:reason, :type=>"VideoAdTagError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdBreakFillType=>{:type=>"string", :enumerations=>["SLATE", "UNDERLYING_CONTENT", "UNKNOWN"]}, :"AdBreakMarkupError.Reason"=>{:type=>"string", :enumerations=>["INVALID_AD_BREAK_MARKUPS_FOR_STREAMING_FORMAT", "UNKNOWN"]}, :AdBreakMarkupType=>{:type=>"string", :enumerations=>["AD_BREAK_MARKUP_HLS_EXT_CUE", "AD_BREAK_MARKUP_HLS_PRIMETIME_SPLICE", "AD_BREAK_MARKUP_HLS_DATERANGE_SPLICE", "AD_BREAK_MARKUP_SCTE35_XML_SPLICE_INSERT", "AD_BREAK_MARKUP_SCTE35_BINARY_SPLICE_INSERT", "AD_BREAK_MARKUP_SCTE35_BINARY_PROVIDER_AD_START_END", "AD_BREAK_MARKUP_SCTE35_BINARY_PROVIDER_PLACEMENT_OP_START_END", "AD_BREAK_MARKUP_SCTE35_BINARY_BREAK_START_END", "UNKNOWN"]}, :AdServingFormat=>{:type=>"string", :enumerations=>["AD_MANAGER_DAI", "DIRECT", "UNKNOWN"]}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :DynamicAdInsertionType=>{:type=>"string", :enumerations=>["LINEAR", "POD_SERVING_REDIRECT", "POD_SERVING_MANIFEST", "UNKNOWN"]}, :"EntityLimitReachedError.Reason"=>{:type=>"string", :enumerations=>["CUSTOM_TARGETING_VALUES_LIMIT_REACHED", "AD_EXCLUSION_RULES_LIMIT_REACHED", "FIRST_PARTY_AUDIENCE_SEGMENTS_LIMIT_REACHED", "PLACEMENTS_LIMIT_REACHED", "LINE_ITEMS_LIMIT_REACHED", "ACTIVE_LINE_ITEMS_LIMIT_REACHED", "DAI_ENCODING_PROFILES_LIMIT_REACHED", "TRAFFIC_FORECAST_SEGMENTS_LIMIT_REACHED", "FORECAST_ADJUSTMENTS_LIMIT_REACHED", "ACTIVE_EXPERIMENTS_LIMIT_REACHED", "SITES_LIMIT_REACHED", "UNKNOWN"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"InvalidUrlError.Reason"=>{:type=>"string", :enumerations=>["ILLEGAL_CHARACTERS", "INVALID_FORMAT", "INSECURE_SCHEME", "NO_SCHEME", "UNKNOWN"]}, :"LiveStreamEventActionError.Reason"=>{:type=>"string", :enumerations=>["INVALID_STATUS_TRANSITION", "IS_ARCHIVED", "INVALID_SLATE_SETTING", "SLATE_CREATIVE_NOT_TRANSCODED", "SLATE_CREATIVE_ARCHIVED", "CANNOT_ACTIVATE_IF_USING_INACTIVE_DAI_AUTHENTICATION_KEYS", "UNKNOWN"]}, :"LiveStreamEventCdnSettingsError.Reason"=>{:type=>"string", :enumerations=>["CDN_CONFIGURATIONS_MUST_HAVE_UNIQUE_CDN_URL_PREFIXES", "MUST_BE_LIVE_CDN_CONFIGURATION", "UNKNOWN"]}, :"LiveStreamEventConditioningError.Reason"=>{:type=>"string", :enumerations=>["CANNOT_APPLY_DASH_BRIDGE", "CANNOT_UPDATE_DASH_BRIDGE_AFTER_START_TIME", "UNKNOWN"]}, :"LiveStreamEventCustomAssetKeyError.Reason"=>{:type=>"string", :enumerations=>["CONTAINS_INVALID_CHARACTERS", "UNKNOWN"]}, :"LiveStreamEventDateTimeError.Reason"=>{:type=>"string", :enumerations=>["START_DATE_TIME_IS_IN_PAST", "END_DATE_TIME_NOT_AFTER_START_DATE_TIME", "END_DATE_TIME_TOO_LATE", "UNKNOWN"]}, :"LiveStreamEventDvrWindowError.Reason"=>{:type=>"string", :enumerations=>["DVR_WINDOW_TOO_HIGH", "DVR_WINDOW_TOO_LOW", "UNKNOWN"]}, :"LiveStreamEventPrerollSettingsError.Reason"=>{:type=>"string", :enumerations=>["INVALID_PREROLL_SETTINGS", "UNKNOWN"]}, :"LiveStreamEventSlateError.Reason"=>{:type=>"string", :enumerations=>["INVALID_SLATE_CREATIVE_ID", "LIVE_STREAM_EVENT_SLATE_CREATIVE_ID_REQUIRED", "MISSING_SOURCE_FOR_SLATE", "INVALID_SLATE_TYPE", "CANNOT_CHANGE_SLATE_VIDEO_SOURCE_URL", "UNKNOWN"]}, :LiveStreamEventStatus=>{:type=>"string", :enumerations=>["ACTIVE", "ARCHIVED", "PAUSED", "ADS_PAUSED", "UNKNOWN"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"NullError.Reason"=>{:type=>"string", :enumerations=>["NULL_CONTENT"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :PlaylistType=>{:type=>"string", :enumerations=>["EVENT", "LIVE", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT"]}, :"RangeError.Reason"=>{:type=>"string", :enumerations=>["TOO_HIGH", "TOO_LOW", "UNKNOWN"]}, :RefreshType=>{:type=>"string", :enumerations=>["AUTOMATIC", "MANUAL", "UNKNOWN"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"RequiredNumberError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "TOO_LARGE_WITH_DETAILS", "TOO_SMALL_WITH_DETAILS", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :SlateStatus=>{:type=>"string", :enumerations=>["ACTIVE", "ARCHIVED", "UNKNOWN"]}, :StartDateTimeType=>{:type=>"string", :enumerations=>["USE_START_DATE_TIME", "IMMEDIATELY", "ONE_HOUR_FROM_NOW", "UNKNOWN"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :StreamingFormat=>{:type=>"string", :enumerations=>["HLS", "DASH", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}, :TranscodeStatus=>{:type=>"string", :enumerations=>["UNKNOWN", "NOT_READY", "COMPLETED", "FAILED", "NEEDS_TRANSCODE", "IN_PROGRESS"]}, :"VideoAdTagError.Reason"=>{:type=>"string", :enumerations=>["MISSING_REQUIRED_FIELDS", "NO_LIVE_TRAFFIC", "NO_VOD_TRAFFIC", "INVALID_AD_TAG_HOST", "INVALID_SCHEME", "INVALID_AD_OUTPUT_FORMAT", "UNKNOWN"]}}
    LIVESTREAMEVENTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LIVESTREAMEVENTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LIVESTREAMEVENTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LIVESTREAMEVENTSERVICE_NAMESPACES[index]
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
      super(exception_fault, LiveStreamEventServiceRegistry)
    end
  end
end; end; end
