# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2023, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.3 on 2023-08-15 13:42:59.

require 'ad_manager_api/errors'

module AdManagerApi; module V202305; module ReportService
  class ReportServiceRegistry
    REPORTSERVICE_METHODS = {:get_report_download_url=>{:input=>[{:name=>:report_job_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:export_format, :type=>"ExportFormat", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_report_download_url_response", :fields=>[{:name=>:rval, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :original_name=>"getReportDownloadURL"}, :get_report_download_url_with_options=>{:input=>[{:name=>:report_job_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_download_options, :type=>"ReportDownloadOptions", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_report_download_url_with_options_response", :fields=>[{:name=>:rval, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}}, :get_report_job_status=>{:input=>[{:name=>:report_job_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_report_job_status_response", :fields=>[{:name=>:rval, :type=>"ReportJobStatus", :min_occurs=>0, :max_occurs=>1}]}}, :get_saved_queries_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_saved_queries_by_statement_response", :fields=>[{:name=>:rval, :type=>"SavedQueryPage", :min_occurs=>0, :max_occurs=>1}]}}, :run_report_job=>{:input=>[{:name=>:report_job, :type=>"ReportJob", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"run_report_job_response", :fields=>[{:name=>:rval, :type=>"ReportJob", :min_occurs=>0, :max_occurs=>1}]}}}
    REPORTSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CurrencyCodeError=>{:fields=>[{:name=>:reason, :type=>"CurrencyCodeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReportDownloadOptions=>{:fields=>[{:name=>:export_format, :type=>"ExportFormat", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_report_properties, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_totals_row, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:use_gzip_compression, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ReportError=>{:fields=>[{:name=>:reason, :type=>"ReportError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReportJob=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_query, :type=>"ReportQuery", :min_occurs=>0, :max_occurs=>1}]}, :ReportQuery=>{:fields=>[{:name=>:dimensions, :type=>"Dimension", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ad_unit_view, :type=>"ReportQuery.AdUnitView", :min_occurs=>0, :max_occurs=>1}, {:name=>:columns, :type=>"Column", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:dimension_attributes, :type=>"DimensionAttribute", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_field_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:cms_metadata_key_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_dimension_key_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:start_date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:date_range_type, :type=>"DateRangeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_currency, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_type, :type=>"TimeZoneType", :min_occurs=>0, :max_occurs=>1}]}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SavedQuery=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:report_query, :type=>"ReportQuery", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_compatible_with_api_version, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SavedQueryPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"SavedQuery", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :Value=>{:fields=>[], :abstract=>true}, :"ReportQuery.AdUnitView"=>{:type=>"string", :enumerations=>["TOP_LEVEL", "FLAT", "HIERARCHICAL"]}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :Column=>{:type=>"string", :enumerations=>["AD_SERVER_IMPRESSIONS", "AD_SERVER_BEGIN_TO_RENDER_IMPRESSIONS", "AD_SERVER_TARGETED_IMPRESSIONS", "AD_SERVER_CLICKS", "AD_SERVER_TARGETED_CLICKS", "AD_SERVER_CTR", "AD_SERVER_CPM_AND_CPC_REVENUE", "AD_SERVER_CPD_REVENUE", "AD_SERVER_CPA_REVENUE", "AD_SERVER_ALL_REVENUE", "AD_SERVER_WITHOUT_CPD_AVERAGE_ECPM", "AD_SERVER_WITH_CPD_AVERAGE_ECPM", "AD_SERVER_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS", "AD_SERVER_LINE_ITEM_LEVEL_PERCENT_CLICKS", "AD_SERVER_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE", "AD_SERVER_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE", "AD_SERVER_UNFILTERED_IMPRESSIONS", "AD_SERVER_UNFILTERED_BEGIN_TO_RENDER_IMPRESSIONS", "AD_SERVER_UNFILTERED_CLICKS", "ADSENSE_LINE_ITEM_LEVEL_IMPRESSIONS", "ADSENSE_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS", "ADSENSE_LINE_ITEM_LEVEL_CLICKS", "ADSENSE_LINE_ITEM_LEVEL_TARGETED_CLICKS", "ADSENSE_LINE_ITEM_LEVEL_CTR", "ADSENSE_LINE_ITEM_LEVEL_REVENUE", "ADSENSE_LINE_ITEM_LEVEL_AVERAGE_ECPM", "ADSENSE_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS", "ADSENSE_LINE_ITEM_LEVEL_PERCENT_CLICKS", "ADSENSE_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE", "ADSENSE_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE", "AD_EXCHANGE_LINE_ITEM_LEVEL_IMPRESSIONS", "BID_COUNT", "BID_AVERAGE_CPM", "YIELD_GROUP_CALLOUTS", "YIELD_GROUP_SUCCESSFUL_RESPONSES", "YIELD_GROUP_BIDS", "YIELD_GROUP_BIDS_IN_AUCTION", "YIELD_GROUP_AUCTIONS_WON", "DEALS_BID_REQUESTS", "DEALS_BIDS", "DEALS_BID_RATE", "DEALS_WINNING_BIDS", "DEALS_WIN_RATE", "YIELD_GROUP_IMPRESSIONS", "YIELD_GROUP_ESTIMATED_REVENUE", "YIELD_GROUP_ESTIMATED_CPM", "YIELD_GROUP_MEDIATION_FILL_RATE", "YIELD_GROUP_MEDIATION_PASSBACKS", "YIELD_GROUP_MEDIATION_THIRD_PARTY_ECPM", "YIELD_GROUP_MEDIATION_CHAINS_SERVED", "MEDIATION_THIRD_PARTY_ECPM", "AD_EXCHANGE_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS", "AD_EXCHANGE_LINE_ITEM_LEVEL_CLICKS", "AD_EXCHANGE_LINE_ITEM_LEVEL_TARGETED_CLICKS", "AD_EXCHANGE_LINE_ITEM_LEVEL_CTR", "AD_EXCHANGE_LINE_ITEM_LEVEL_PERCENT_IMPRESSIONS", "AD_EXCHANGE_LINE_ITEM_LEVEL_PERCENT_CLICKS", "AD_EXCHANGE_LINE_ITEM_LEVEL_REVENUE", "AD_EXCHANGE_LINE_ITEM_LEVEL_WITHOUT_CPD_PERCENT_REVENUE", "AD_EXCHANGE_LINE_ITEM_LEVEL_WITH_CPD_PERCENT_REVENUE", "AD_EXCHANGE_LINE_ITEM_LEVEL_AVERAGE_ECPM", "TOTAL_LINE_ITEM_LEVEL_IMPRESSIONS", "TOTAL_LINE_ITEM_LEVEL_TARGETED_IMPRESSIONS", "TOTAL_LINE_ITEM_LEVEL_CLICKS", "TOTAL_LINE_ITEM_LEVEL_TARGETED_CLICKS", "TOTAL_LINE_ITEM_LEVEL_CTR", "TOTAL_LINE_ITEM_LEVEL_CPM_AND_CPC_REVENUE", "TOTAL_LINE_ITEM_LEVEL_ALL_REVENUE", "TOTAL_LINE_ITEM_LEVEL_WITHOUT_CPD_AVERAGE_ECPM", "TOTAL_LINE_ITEM_LEVEL_WITH_CPD_AVERAGE_ECPM", "TOTAL_CODE_SERVED_COUNT", "TOTAL_AD_REQUESTS", "TOTAL_RESPONSES_SERVED", "TOTAL_UNMATCHED_AD_REQUESTS", "TOTAL_FILL_RATE", "AD_SERVER_RESPONSES_SERVED", "ADSENSE_RESPONSES_SERVED", "AD_EXCHANGE_RESPONSES_SERVED", "PROGRAMMATIC_RESPONSES_SERVED", "PROGRAMMATIC_MATCH_RATE", "TOTAL_PROGRAMMATIC_ELIGIBLE_AD_REQUESTS", "TOTAL_VIDEO_OPPORTUNITIES", "TOTAL_VIDEO_CAPPED_OPPORTUNITIES", "TOTAL_VIDEO_MATCHED_OPPORTUNITIES", "TOTAL_VIDEO_MATCHED_DURATION", "TOTAL_VIDEO_DURATION", "TOTAL_VIDEO_BREAK_START", "TOTAL_VIDEO_BREAK_END", "TOTAL_INVENTORY_LEVEL_UNFILLED_IMPRESSIONS", "UNIQUE_REACH_FREQUENCY", "UNIQUE_REACH_IMPRESSIONS", "UNIQUE_REACH", "SDK_MEDIATION_CREATIVE_IMPRESSIONS", "SDK_MEDIATION_CREATIVE_CLICKS", "SELL_THROUGH_FORECASTED_IMPRESSIONS", "PARTNER_SALES_PARTNER_IMPRESSIONS", "PARTNER_SALES_PARTNER_CODE_SERVED", "PARTNER_SALES_GOOGLE_IMPRESSIONS", "PARTNER_SALES_GOOGLE_RESERVATION_IMPRESSIONS", "PARTNER_SALES_GOOGLE_AUCTION_IMPRESSIONS", "PARTNER_SALES_QUERIES", "PARTNER_SALES_FILLED_QUERIES", "PARTNER_SALES_SELL_THROUGH_RATE", "SELL_THROUGH_AVAILABLE_IMPRESSIONS", "SELL_THROUGH_RESERVED_IMPRESSIONS", "SELL_THROUGH_SELL_THROUGH_RATE", "RICH_MEDIA_BACKUP_IMAGES", "RICH_MEDIA_DISPLAY_TIME", "RICH_MEDIA_AVERAGE_DISPLAY_TIME", "RICH_MEDIA_EXPANSIONS", "RICH_MEDIA_EXPANDING_TIME", "RICH_MEDIA_INTERACTION_TIME", "RICH_MEDIA_INTERACTION_COUNT", "RICH_MEDIA_INTERACTION_RATE", "RICH_MEDIA_AVERAGE_INTERACTION_TIME", "RICH_MEDIA_INTERACTION_IMPRESSIONS", "RICH_MEDIA_MANUAL_CLOSES", "RICH_MEDIA_FULL_SCREEN_IMPRESSIONS", "RICH_MEDIA_VIDEO_INTERACTIONS", "RICH_MEDIA_VIDEO_INTERACTION_RATE", "RICH_MEDIA_VIDEO_MUTES", "RICH_MEDIA_VIDEO_PAUSES", "RICH_MEDIA_VIDEO_PLAYES", "RICH_MEDIA_VIDEO_MIDPOINTS", "RICH_MEDIA_VIDEO_COMPLETES", "RICH_MEDIA_VIDEO_REPLAYS", "RICH_MEDIA_VIDEO_STOPS", "RICH_MEDIA_VIDEO_UNMUTES", "RICH_MEDIA_VIDEO_VIEW_TIME", "RICH_MEDIA_VIDEO_VIEW_RATE", "RICH_MEDIA_CUSTOM_EVENT_TIME", "RICH_MEDIA_CUSTOM_EVENT_COUNT", "VIDEO_VIEWERSHIP_START", "VIDEO_VIEWERSHIP_FIRST_QUARTILE", "VIDEO_VIEWERSHIP_MIDPOINT", "VIDEO_VIEWERSHIP_THIRD_QUARTILE", "VIDEO_VIEWERSHIP_COMPLETE", "VIDEO_VIEWERSHIP_AVERAGE_VIEW_RATE", "VIDEO_VIEWERSHIP_AVERAGE_VIEW_TIME", "VIDEO_VIEWERSHIP_COMPLETION_RATE", "VIDEO_VIEWERSHIP_TOTAL_ERROR_COUNT", "VIDEO_VIEWERSHIP_VIDEO_LENGTH", "VIDEO_VIEWERSHIP_SKIP_BUTTON_SHOWN", "VIDEO_VIEWERSHIP_ENGAGED_VIEW", "VIDEO_VIEWERSHIP_VIEW_THROUGH_RATE", "VIDEO_VIEWERSHIP_AUTO_PLAYS", "VIDEO_VIEWERSHIP_CLICK_TO_PLAYS", "VIDEO_VIEWERSHIP_TOTAL_ERROR_RATE", "DROPOFF_RATE", "VIDEO_TRUEVIEW_VIEWS", "VIDEO_TRUEVIEW_SKIP_RATE", "VIDEO_TRUEVIEW_VTR", "VIDEO_ERRORS_VAST_ERROR_100_COUNT", "VIDEO_ERRORS_VAST_ERROR_101_COUNT", "VIDEO_ERRORS_VAST_ERROR_102_COUNT", "VIDEO_ERRORS_VAST_ERROR_200_COUNT", "VIDEO_ERRORS_VAST_ERROR_201_COUNT", "VIDEO_ERRORS_VAST_ERROR_202_COUNT", "VIDEO_ERRORS_VAST_ERROR_203_COUNT", "VIDEO_ERRORS_VAST_ERROR_300_COUNT", "VIDEO_ERRORS_VAST_ERROR_301_COUNT", "VIDEO_ERRORS_VAST_ERROR_302_COUNT", "VIDEO_ERRORS_VAST_ERROR_303_COUNT", "VIDEO_ERRORS_VAST_ERROR_400_COUNT", "VIDEO_ERRORS_VAST_ERROR_401_COUNT", "VIDEO_ERRORS_VAST_ERROR_402_COUNT", "VIDEO_ERRORS_VAST_ERROR_403_COUNT", "VIDEO_ERRORS_VAST_ERROR_405_COUNT", "VIDEO_ERRORS_VAST_ERROR_500_COUNT", "VIDEO_ERRORS_VAST_ERROR_501_COUNT", "VIDEO_ERRORS_VAST_ERROR_502_COUNT", "VIDEO_ERRORS_VAST_ERROR_503_COUNT", "VIDEO_ERRORS_VAST_ERROR_600_COUNT", "VIDEO_ERRORS_VAST_ERROR_601_COUNT", "VIDEO_ERRORS_VAST_ERROR_602_COUNT", "VIDEO_ERRORS_VAST_ERROR_603_COUNT", "VIDEO_ERRORS_VAST_ERROR_604_COUNT", "VIDEO_ERRORS_VAST_ERROR_900_COUNT", "VIDEO_ERRORS_VAST_ERROR_901_COUNT", "VIDEO_INTERACTION_PAUSE", "VIDEO_INTERACTION_RESUME", "VIDEO_INTERACTION_REWIND", "VIDEO_INTERACTION_MUTE", "VIDEO_INTERACTION_UNMUTE", "VIDEO_INTERACTION_COLLAPSE", "VIDEO_INTERACTION_EXPAND", "VIDEO_INTERACTION_FULL_SCREEN", "VIDEO_INTERACTION_AVERAGE_INTERACTION_RATE", "VIDEO_INTERACTION_VIDEO_SKIPS", "VIDEO_OPTIMIZATION_CONTROL_STARTS", "VIDEO_OPTIMIZATION_OPTIMIZED_STARTS", "VIDEO_OPTIMIZATION_CONTROL_COMPLETES", "VIDEO_OPTIMIZATION_OPTIMIZED_COMPLETES", "VIDEO_OPTIMIZATION_CONTROL_COMPLETION_RATE", "VIDEO_OPTIMIZATION_OPTIMIZED_COMPLETION_RATE", "VIDEO_OPTIMIZATION_COMPLETION_RATE_LIFT", "VIDEO_OPTIMIZATION_CONTROL_SKIP_BUTTON_SHOWN", "VIDEO_OPTIMIZATION_OPTIMIZED_SKIP_BUTTON_SHOWN", "VIDEO_OPTIMIZATION_CONTROL_ENGAGED_VIEW", "VIDEO_OPTIMIZATION_OPTIMIZED_ENGAGED_VIEW", "VIDEO_OPTIMIZATION_CONTROL_VIEW_THROUGH_RATE", "VIDEO_OPTIMIZATION_OPTIMIZED_VIEW_THROUGH_RATE", "VIDEO_OPTIMIZATION_VIEW_THROUGH_RATE_LIFT", "VIDEO_IMPRESSIONS_REAL_TIME", "VIDEO_MATCHED_QUERIES_REAL_TIME", "VIDEO_UNMATCHED_QUERIES_REAL_TIME", "VIDEO_TOTAL_QUERIES_REAL_TIME", "VIDEO_CREATIVE_SERVE_REAL_TIME", "VIDEO_VAST3_ERROR_100_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_101_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_102_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_200_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_201_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_202_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_203_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_300_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_301_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_302_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_303_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_400_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_401_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_402_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_403_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_405_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_500_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_501_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_502_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_503_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_600_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_601_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_602_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_603_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_604_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_900_COUNT_REAL_TIME", "VIDEO_VAST3_ERROR_901_COUNT_REAL_TIME", "VIDEO_VAST4_ERROR_406_COUNT_REAL_TIME", "VIDEO_VAST4_ERROR_407_COUNT_REAL_TIME", "VIDEO_VAST4_ERROR_408_COUNT_REAL_TIME", "VIDEO_VAST4_ERROR_409_COUNT_REAL_TIME", "VIDEO_VAST4_ERROR_410_COUNT_REAL_TIME", "VIDEO_VAST_TOTAL_ERROR_COUNT_REAL_TIME", "TOTAL_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS", "TOTAL_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS", "TOTAL_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE", "TOTAL_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS", "TOTAL_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE", "TOTAL_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME", "AD_SERVER_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS", "AD_SERVER_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS", "AD_SERVER_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE", "AD_SERVER_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS", "AD_SERVER_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE", "AD_SERVER_ACTIVE_VIEW_REVENUE", "AD_SERVER_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME", "ADSENSE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS", "ADSENSE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS", "ADSENSE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE", "ADSENSE_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS", "ADSENSE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE", "ADSENSE_ACTIVE_VIEW_REVENUE", "ADSENSE_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME", "AD_EXCHANGE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS", "AD_EXCHANGE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS", "AD_EXCHANGE_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE", "AD_EXCHANGE_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS", "AD_EXCHANGE_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE", "AD_EXCHANGE_ACTIVE_VIEW_REVENUE", "AD_EXCHANGE_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME", "AD_EXCHANGE_TOTAL_REQUESTS", "AD_EXCHANGE_MATCH_RATE", "AD_EXCHANGE_COST_PER_CLICK", "AD_EXCHANGE_TOTAL_REQUEST_CTR", "AD_EXCHANGE_MATCHED_REQUEST_CTR", "AD_EXCHANGE_TOTAL_REQUEST_ECPM", "AD_EXCHANGE_MATCHED_REQUEST_ECPM", "AD_EXCHANGE_LIFT_EARNINGS", "TOTAL_ACTIVE_VIEW_REVENUE", "VIEW_THROUGH_CONVERSIONS", "CONVERSIONS_PER_THOUSAND_IMPRESSIONS", "CLICK_THROUGH_CONVERSIONS", "CONVERSIONS_PER_CLICK", "VIEW_THROUGH_REVENUE", "CLICK_THROUGH_REVENUE", "TOTAL_CONVERSIONS", "TOTAL_CONVERSION_REVENUE", "DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_COMPETING_TOTAL", "DYNAMIC_ALLOCATION_OPPORTUNITY_UNFILLED_IMPRESSIONS_COMPETING", "DYNAMIC_ALLOCATION_OPPORTUNITY_ELIGIBLE_IMPRESSIONS_TOTAL", "DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_NOT_COMPETING_TOTAL", "DYNAMIC_ALLOCATION_OPPORTUNITY_IMPRESSIONS_NOT_COMPETING_PERCENT_TOTAL", "DYNAMIC_ALLOCATION_OPPORTUNITY_SATURATION_RATE_TOTAL", "DYNAMIC_ALLOCATION_OPPORTUNITY_MATCH_RATE_TOTAL", "INVOICED_IMPRESSIONS", "INVOICED_UNFILLED_IMPRESSIONS", "NIELSEN_IMPRESSIONS", "NIELSEN_IN_TARGET_IMPRESSIONS", "NIELSEN_POPULATION_BASE", "NIELSEN_IN_TARGET_POPULATION_BASE", "NIELSEN_UNIQUE_AUDIENCE", "NIELSEN_IN_TARGET_UNIQUE_AUDIENCE", "NIELSEN_PERCENT_AUDIENCE_REACH", "NIELSEN_IN_TARGET_PERCENT_AUDIENCE_REACH", "NIELSEN_AVERAGE_FREQUENCY", "NIELSEN_IN_TARGET_AVERAGE_FREQUENCY", "NIELSEN_GROSS_RATING_POINTS", "NIELSEN_IN_TARGET_GROSS_RATING_POINTS", "NIELSEN_PERCENT_IMPRESSIONS_SHARE", "NIELSEN_IN_TARGET_PERCENT_IMPRESSIONS_SHARE", "NIELSEN_PERCENT_POPULATION_SHARE", "NIELSEN_IN_TARGET_PERCENT_POPULATION_SHARE", "NIELSEN_PERCENT_AUDIENCE_SHARE", "NIELSEN_IN_TARGET_PERCENT_AUDIENCE_SHARE", "NIELSEN_AUDIENCE_INDEX", "NIELSEN_IN_TARGET_AUDIENCE_INDEX", "NIELSEN_IMPRESSIONS_INDEX", "NIELSEN_IN_TARGET_IMPRESSIONS_INDEX", "NIELSEN_IN_TARGET_RATIO", "DP_IMPRESSIONS", "DP_CLICKS", "DP_QUERIES", "DP_MATCHED_QUERIES", "DP_COST", "DP_ECPM", "DP_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS", "DP_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS", "DP_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS", "DP_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS_RATE", "DP_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS_RATE", "PARTNER_MANAGEMENT_HOST_IMPRESSIONS", "PARTNER_MANAGEMENT_HOST_CLICKS", "PARTNER_MANAGEMENT_HOST_CTR", "PARTNER_MANAGEMENT_UNFILLED_IMPRESSIONS", "PARTNER_MANAGEMENT_PARTNER_IMPRESSIONS", "PARTNER_MANAGEMENT_PARTNER_CLICKS", "PARTNER_MANAGEMENT_PARTNER_CTR", "PARTNER_MANAGEMENT_GROSS_REVENUE", "PARTNER_FINANCE_HOST_IMPRESSIONS", "PARTNER_FINANCE_HOST_REVENUE", "PARTNER_FINANCE_HOST_ECPM", "PARTNER_FINANCE_PARTNER_REVENUE", "PARTNER_FINANCE_PARTNER_ECPM", "PARTNER_FINANCE_GROSS_REVENUE", "CREATIVE_LOAD_TIME_0_500_MS_PERCENT", "CREATIVE_LOAD_TIME_500_1000_MS_PERCENT", "CREATIVE_LOAD_TIME_1_2_S_PERCENT", "CREATIVE_LOAD_TIME_2_4_S_PERCENT", "CREATIVE_LOAD_TIME_4_8_S_PERCENT", "CREATIVE_LOAD_TIME_GREATER_THAN_8_S_PERCENT", "UNVIEWED_REASON_SLOT_NEVER_ENTERED_VIEWPORT_PERCENT", "UNVIEWED_REASON_USER_SCROLLED_BEFORE_AD_FILLED_PERCENT", "UNVIEWED_REASON_USER_SCROLLED_BEFORE_AD_LOADED_PERCENT", "UNVIEWED_REASON_USER_SCROLLED_BEFORE_1_S_PERCENT", "UNVIEWED_REASON_OTHER_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_0_500_MS_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_500_1000_MS_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_1_2_S_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_2_4_S_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_4_8_S_PERCENT", "PAGE_NAVIGATION_TO_TAG_LOADED_TIME_GREATER_THAN_8_S_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_0_500_MS_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_500_1000_MS_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_1_2_S_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_2_4_S_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_4_8_S_PERCENT", "PAGE_NAVIGATION_TO_FIRST_AD_REQUEST_TIME_GREATER_THAN_8_S_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_0_500_MS_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_500_1000_MS_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_1_2_S_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_2_4_S_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_4_8_S_PERCENT", "TAG_LOAD_TO_FIRST_AD_REQUEST_TIME_GREATER_THAN_8_S_PERCENT"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :"CurrencyCodeError.Reason"=>{:type=>"string", :enumerations=>["INVALID", "UNSUPPORTED", "DEPRECATED_CURRENCY_USED"]}, :DateRangeType=>{:type=>"string", :enumerations=>["TODAY", "YESTERDAY", "LAST_WEEK", "LAST_MONTH", "LAST_3_MONTHS", "REACH_LIFETIME", "CUSTOM_DATE", "NEXT_DAY", "NEXT_90_DAYS", "NEXT_WEEK", "NEXT_MONTH", "CURRENT_AND_NEXT_MONTH", "NEXT_QUARTER", "NEXT_3_MONTHS", "NEXT_12_MONTHS"]}, :Dimension=>{:type=>"string", :enumerations=>["MONTH_AND_YEAR", "WEEK", "DATE", "DAY", "HOUR", "DATE_PT", "WEEK_PT", "MONTH_YEAR_PT", "DAY_OF_WEEK_PT", "LINE_ITEM_ID", "LINE_ITEM_NAME", "LINE_ITEM_TYPE", "ORDER_ID", "ORDER_NAME", "ORDER_DELIVERY_STATUS", "ADVERTISER_ID", "ADVERTISER_NAME", "AD_NETWORK_ID", "AD_NETWORK_NAME", "SALESPERSON_ID", "SALESPERSON_NAME", "CREATIVE_ID", "CREATIVE_NAME", "CREATIVE_TYPE", "CREATIVE_BILLING_TYPE", "CUSTOM_EVENT_ID", "CUSTOM_EVENT_NAME", "CUSTOM_EVENT_TYPE", "CREATIVE_SIZE", "AD_UNIT_ID", "AD_UNIT_NAME", "PARENT_AD_UNIT_ID", "PARENT_AD_UNIT_NAME", "PLACEMENT_ID", "PLACEMENT_NAME", "PLACEMENT_STATUS", "TARGETING", "BROWSER_NAME", "DEVICE_CATEGORY_ID", "DEVICE_CATEGORY_NAME", "COUNTRY_CRITERIA_ID", "COUNTRY_CODE", "COUNTRY_NAME", "REGION_CRITERIA_ID", "REGION_NAME", "CITY_CRITERIA_ID", "CITY_NAME", "METRO_CRITERIA_ID", "METRO_NAME", "POSTAL_CODE_CRITERIA_ID", "POSTAL_CODE", "CUSTOM_TARGETING_VALUE_ID", "CUSTOM_CRITERIA", "ACTIVITY_ID", "ACTIVITY_NAME", "ACTIVITY_GROUP_ID", "ACTIVITY_GROUP_NAME", "CONTENT_ID", "CONTENT_NAME", "CONTENT_BUNDLE_ID", "CONTENT_BUNDLE_NAME", "VIDEO_METADATA_KEY_ID", "VIDEO_METADATA_KEY_NAME", "CMS_METADATA", "VIDEO_FALLBACK_POSITION", "POSITION_OF_POD", "POSITION_IN_POD", "CUSTOM_SPOT_ID", "CUSTOM_SPOT_NAME", "VIDEO_REDIRECT_THIRD_PARTY", "VIDEO_BREAK_TYPE", "VIDEO_BREAK_TYPE_NAME", "VIDEO_VAST_VERSION", "VIDEO_AD_REQUEST_DURATION_ID", "VIDEO_AD_REQUEST_DURATION", "VIDEO_PLACEMENT_NAME", "PARTNER_MANAGEMENT_PARTNER_ID", "PARTNER_MANAGEMENT_PARTNER_NAME", "PARTNER_MANAGEMENT_PARTNER_LABEL_ID", "PARTNER_MANAGEMENT_PARTNER_LABEL_NAME", "PARTNER_MANAGEMENT_ASSIGNMENT_ID", "PARTNER_MANAGEMENT_ASSIGNMENT_NAME", "INVENTORY_SHARE_ASSIGNMENT_ID", "INVENTORY_SHARE_ASSIGNMENT_NAME", "INVENTORY_SHARE_OUTCOME", "GRP_DEMOGRAPHICS", "AD_REQUEST_AD_UNIT_SIZES", "AD_REQUEST_CUSTOM_CRITERIA", "IS_FIRST_LOOK_DEAL", "IS_ADX_DIRECT", "YIELD_GROUP_ID", "YIELD_GROUP_NAME", "YIELD_PARTNER", "YIELD_PARTNER_TAG", "EXCHANGE_BIDDING_DEAL_ID", "EXCHANGE_BIDDING_DEAL_TYPE", "CLASSIFIED_ADVERTISER_ID", "CLASSIFIED_ADVERTISER_NAME", "CLASSIFIED_BRAND_ID", "CLASSIFIED_BRAND_NAME", "MEDIATION_TYPE", "NATIVE_TEMPLATE_ID", "NATIVE_TEMPLATE_NAME", "NATIVE_STYLE_ID", "NATIVE_STYLE_NAME", "CHILD_NETWORK_CODE", "MOBILE_APP_RESOLVED_ID", "MOBILE_APP_NAME", "MOBILE_DEVICE_NAME", "MOBILE_INVENTORY_TYPE", "OPERATING_SYSTEM_VERSION_ID", "OPERATING_SYSTEM_VERSION_NAME", "REQUEST_TYPE", "AD_UNIT_STATUS", "MASTER_COMPANION_CREATIVE_ID", "MASTER_COMPANION_CREATIVE_NAME", "AUDIENCE_SEGMENT_ID", "AUDIENCE_SEGMENT_NAME", "AUDIENCE_SEGMENT_DATA_PROVIDER_NAME", "WEB_PROPERTY_CODE", "BUYING_AGENCY_NAME", "BUYER_NETWORK_ID", "BUYER_NETWORK_NAME", "BIDDER_ID", "BIDDER_NAME", "ADVERTISER_DOMAIN_NAME", "AD_EXCHANGE_OPTIMIZATION_TYPE", "ADVERTISER_VERTICAL_NAME", "NIELSEN_SEGMENT", "NIELSEN_DEMOGRAPHICS", "NIELSEN_RESTATEMENT_DATE", "NIELSEN_DEVICE_ID", "NIELSEN_DEVICE_NAME", "PROGRAMMATIC_BUYER_ID", "PROGRAMMATIC_BUYER_NAME", "REQUESTED_AD_SIZES", "CREATIVE_SIZE_DELIVERED", "PROGRAMMATIC_CHANNEL_ID", "PROGRAMMATIC_CHANNEL_NAME", "CLASSIFIED_YIELD_PARTNER_NAME", "DP_DATE", "DP_WEEK", "DP_MONTH_YEAR", "DP_COUNTRY_CRITERIA_ID", "DP_COUNTRY_NAME", "DP_INVENTORY_TYPE", "DP_CREATIVE_SIZE", "DP_BRAND_NAME", "DP_ADVERTISER_NAME", "DP_ADX_BUYER_NETWORK_NAME", "DP_MOBILE_DEVICE_NAME", "DP_DEVICE_CATEGORY_NAME", "DP_TAG_ID", "DP_DEAL_ID", "DP_APP_ID", "CUSTOM_DIMENSION", "DEMAND_CHANNEL_ID", "DEMAND_CHANNEL_NAME", "DOMAIN", "SERVING_RESTRICTION_ID", "SERVING_RESTRICTION_NAME", "UNIFIED_PRICING_RULE_ID", "UNIFIED_PRICING_RULE_NAME", "FIRST_LOOK_PRICING_RULE_ID", "FIRST_LOOK_PRICING_RULE_NAME", "BID_RANGE", "BID_REJECTION_REASON", "BID_REJECTION_REASON_NAME", "AD_TECHNOLOGY_PROVIDER_DOMAIN", "PROGRAMMATIC_DEAL_ID", "PROGRAMMATIC_DEAL_NAME", "AD_TECHNOLOGY_PROVIDER_ID", "AD_TECHNOLOGY_PROVIDER_NAME", "TCF_VENDOR_ID", "TCF_VENDOR_NAME", "SITE_NAME", "CHANNEL_NAME", "URL_ID", "URL_NAME", "VIDEO_AD_DURATION", "VIDEO_AD_TYPE_ID", "VIDEO_AD_TYPE_NAME", "AD_EXCHANGE_PRODUCT_CODE", "AD_EXCHANGE_PRODUCT_NAME", "DYNAMIC_ALLOCATION_ID", "DYNAMIC_ALLOCATION_NAME", "AD_TYPE_ID", "AD_TYPE_NAME", "AD_LOCATION_ID", "AD_LOCATION_NAME", "TARGETING_TYPE_CODE", "TARGETING_TYPE_NAME", "BRANDING_TYPE_CODE", "BRANDING_TYPE_NAME", "BANDWIDTH_ID", "BANDWIDTH_NAME", "CARRIER_ID", "CARRIER_NAME"]}, :DimensionAttribute=>{:type=>"string", :enumerations=>["LINE_ITEM_LABELS", "LINE_ITEM_LABEL_IDS", "LINE_ITEM_OPTIMIZABLE", "LINE_ITEM_DELIVERY_INDICATOR", "LINE_ITEM_DELIVERY_PACING", "LINE_ITEM_FREQUENCY_CAP", "LINE_ITEM_RECONCILIATION_STATUS", "LINE_ITEM_LAST_RECONCILIATION_DATE_TIME", "ADVERTISER_EXTERNAL_ID", "ADVERTISER_TYPE", "ADVERTISER_CREDIT_STATUS", "ADVERTISER_PRIMARY_CONTACT", "ORDER_START_DATE_TIME", "ORDER_END_DATE_TIME", "ORDER_EXTERNAL_ID", "ORDER_PO_NUMBER", "ORDER_IS_PROGRAMMATIC", "ORDER_AGENCY", "ORDER_AGENCY_ID", "ORDER_LABELS", "ORDER_LABEL_IDS", "ORDER_TRAFFICKER", "ORDER_TRAFFICKER_ID", "ORDER_SECONDARY_TRAFFICKERS", "ORDER_SALESPERSON", "ORDER_SECONDARY_SALESPEOPLE", "ORDER_LIFETIME_IMPRESSIONS", "ORDER_LIFETIME_CLICKS", "ORDER_BOOKED_CPM", "ORDER_BOOKED_CPC", "LINE_ITEM_START_DATE_TIME", "LINE_ITEM_END_DATE_TIME", "LINE_ITEM_EXTERNAL_ID", "LINE_ITEM_COST_TYPE", "LINE_ITEM_COST_PER_UNIT", "LINE_ITEM_CURRENCY_CODE", "LINE_ITEM_GOAL_QUANTITY", "LINE_ITEM_AVERAGE_NUMBER_OF_VIEWERS", "LINE_ITEM_SPONSORSHIP_GOAL_PERCENTAGE", "LINE_ITEM_LIFETIME_IMPRESSIONS", "LINE_ITEM_LIFETIME_CLICKS", "LINE_ITEM_PRIORITY", "CREATIVE_OR_CREATIVE_SET", "MASTER_COMPANION_TYPE", "LINE_ITEM_CONTRACTED_QUANTITY", "LINE_ITEM_DISCOUNT", "LINE_ITEM_NON_CPD_BOOKED_REVENUE", "ADVERTISER_LABELS", "ADVERTISER_LABEL_IDS", "CREATIVE_CLICK_THROUGH_URL", "CREATIVE_SSL_SCAN_RESULT", "CREATIVE_SSL_COMPLIANCE_OVERRIDE", "LINE_ITEM_CREATIVE_START_DATE", "LINE_ITEM_CREATIVE_END_DATE", "CONTENT_CMS_NAME", "CONTENT_CMS_VIDEO_ID", "CHILD_PARTNER_NAME", "AD_UNIT_CODE"]}, :ExportFormat=>{:type=>"string", :enumerations=>["TSV", "TSV_EXCEL", "CSV_DUMP", "XML", "XLSX"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT"]}, :"ReportError.Reason"=>{:type=>"string", :enumerations=>["DEFAULT", "REPORT_ACCESS_NOT_ALLOWED", "DIMENSION_VIEW_NOT_ALLOWED", "ATTRIBUTE_VIEW_NOT_ALLOWED", "COLUMN_VIEW_NOT_ALLOWED", "TOO_MANY_CONCURRENT_REPORTS", "REPORT_QUERY_TOO_LONG", "INVALID_OPERATION_FOR_REPORT_STATE", "INVALID_DIMENSIONS", "INVALID_ATTRIBUTES", "INVALID_CMS_METADATA_DIMENSIONS", "INVALID_COLUMNS", "INVALID_DIMENSION_FILTERS", "INVALID_DATE", "END_DATE_TIME_NOT_AFTER_START_TIME", "START_DATE_MORE_THAN_THREE_YEARS_AGO", "NOT_NULL", "ATTRIBUTES_NOT_SUPPORTED_FOR_REQUEST", "COLUMNS_NOT_SUPPORTED_FOR_REQUESTED_DIMENSIONS", "DATE_RANGE_NOT_SUPPORTED_FOR_REQUESTED_REPORT", "TIME_ZONE_TYPE_NOT_SUPPORTED_FOR_REQUESTED_REPORT", "CURRENCY_CODE_NOT_SUPPORTED_FOR_REQUESTED_REPORT", "FAILED_TO_STORE_REPORT", "REPORT_NOT_FOUND", "SR_CANNOT_RUN_REPORT_IN_ANOTHER_NETWORK", "AD_UNIT_VIEW_NOT_SUPPORTED_FOR_REQUESTED_REPORT", "UNKNOWN"]}, :ReportJobStatus=>{:type=>"string", :enumerations=>["COMPLETED", "IN_PROGRESS", "FAILED"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :"StatementError.Reason"=>{:type=>"string", :enumerations=>["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}, :TimeZoneType=>{:type=>"string", :enumerations=>["UNKNOWN", "PUBLISHER", "PACIFIC"]}}
    REPORTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return REPORTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return REPORTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return REPORTSERVICE_NAMESPACES[index]
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
      super(exception_fault, ReportServiceRegistry)
    end
  end
end; end; end
