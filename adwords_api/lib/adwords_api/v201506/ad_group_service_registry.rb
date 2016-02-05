# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.0 on 2015-10-08 10:49:18.

require 'adwords_api/errors'

module AdwordsApi; module V201506; module AdGroupService
  class AdGroupServiceRegistry
    ADGROUPSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"AdGroupPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"AdGroupOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"AdGroupReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :mutate_label=>{:input=>[{:name=>:operations, :type=>"AdGroupLabelOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_label_response", :fields=>[{:name=>:rval, :type=>"AdGroupLabelReturnValue", :min_occurs=>0, :max_occurs=>1}]}}, :query=>{:input=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"query_response", :fields=>[{:name=>:rval, :type=>"AdGroupPage", :min_occurs=>0, :max_occurs=>1}]}}}
    ADGROUPSERVICE_TYPES = {:AdGroupLabel=>{:fields=>[{:name=>:ad_group_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupLabelOperation=>{:fields=>[{:name=>:operand, :type=>"AdGroupLabel", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :AdGroupServiceError=>{:fields=>[{:name=>:reason, :type=>"AdGroupServiceError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdxError=>{:fields=>[{:name=>:reason, :type=>"AdxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthorizationError=>{:fields=>[{:name=>:reason, :type=>"AuthorizationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BiddingErrors=>{:fields=>[{:name=>:reason, :type=>"BiddingErrors.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextLabel=>{:fields=>[], :base=>"Label"}, :DisplayAttribute=>{:fields=>[{:name=>:background_color, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"LabelAttribute"}, :ClientTermsError=>{:fields=>[{:name=>:reason, :type=>"ClientTermsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ConversionOptimizerBiddingScheme=>{:fields=>[{:name=>:pricing_mode, :type=>"ConversionOptimizerBiddingScheme.PricingMode", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_type, :type=>"ConversionOptimizerBiddingScheme.BidType", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :CustomParameter=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_remove, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :DateError=>{:fields=>[{:name=>:reason, :type=>"DateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DistinctError=>{:fields=>[{:name=>:reason, :type=>"DistinctError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DoubleValue=>{:fields=>[{:name=>:number, :type=>"double", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :EnhancedCpcBiddingScheme=>{:fields=>[], :base=>"BiddingScheme"}, :EntityAccessDenied=>{:fields=>[{:name=>:reason, :type=>"EntityAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityCountLimitExceeded=>{:fields=>[{:name=>:reason, :type=>"EntityCountLimitExceeded.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:enclosing_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:limit, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_limit_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:existing_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityNotFound=>{:fields=>[{:name=>:reason, :type=>"EntityNotFound.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExperimentError=>{:fields=>[{:name=>:reason, :type=>"ExperimentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExplorerAutoOptimizerSetting=>{:fields=>[{:name=>:opt_in, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Setting"}, :ForwardCompatibilityError=>{:fields=>[{:name=>:reason, :type=>"ForwardCompatibilityError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :IdError=>{:fields=>[{:name=>:reason, :type=>"IdError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LongValue=>{:fields=>[{:name=>:number, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"NumberValue"}, :ManualCpcBiddingScheme=>{:fields=>[{:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :ManualCpmBiddingScheme=>{:fields=>[{:name=>:active_view_cpm_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Money=>{:fields=>[{:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"ComparableValue"}, :MultiplierError=>{:fields=>[{:name=>:reason, :type=>"MultiplierError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NewEntityCreationError=>{:fields=>[{:name=>:reason, :type=>"NewEntityCreationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotEmptyError=>{:fields=>[{:name=>:reason, :type=>"NotEmptyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[], :abstract=>true, :base=>"ComparableValue"}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OperatorError=>{:fields=>[{:name=>:reason, :type=>"OperatorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :QueryError=>{:fields=>[{:name=>:reason, :type=>"QueryError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaCheckError=>{:fields=>[{:name=>:reason, :type=>"QuotaCheckError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RateExceededError=>{:fields=>[{:name=>:reason, :type=>"RateExceededError.Reason", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_scope, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:retry_after_seconds, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReadOnlyError=>{:fields=>[{:name=>:reason, :type=>"ReadOnlyError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectedError=>{:fields=>[{:name=>:reason, :type=>"RejectedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestError=>{:fields=>[{:name=>:reason, :type=>"RequestError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SelectorError=>{:fields=>[{:name=>:reason, :type=>"SelectorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SettingError=>{:fields=>[{:name=>:reason, :type=>"SettingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SizeLimitError=>{:fields=>[{:name=>:reason, :type=>"SizeLimitError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapHeader=>{:fields=>[{:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StatsQueryError=>{:fields=>[{:name=>:reason, :type=>"StatsQueryError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_StringMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TargetingSettingDetail=>{:fields=>[{:name=>:criterion_type_group, :type=>"CriterionTypeGroup", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_all, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :TargetingSetting=>{:fields=>[{:name=>:details, :type=>"TargetingSettingDetail", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Setting"}, :UrlError=>{:fields=>[{:name=>:reason, :type=>"UrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ComparableValue=>{:fields=>[{:name=>:comparable_value_type, :original_name=>"ComparableValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :CpaBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CpcBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpc_bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CpmBid=>{:fields=>[{:name=>:bid, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cpm_bid_source, :type=>"BidSource", :min_occurs=>0, :max_occurs=>1}], :base=>"Bids"}, :CustomParameters=>{:fields=>[{:name=>:parameters, :type=>"CustomParameter", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:do_replace, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :DatabaseError=>{:fields=>[{:name=>:reason, :type=>"DatabaseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PageOnePromotedBiddingScheme=>{:fields=>[{:name=>:strategy_goal, :type=>"PageOnePromotedBiddingScheme.StrategyGoal", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_modifier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_budget_constrained, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Setting=>{:fields=>[{:name=>:setting_type, :original_name=>"Setting.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :TargetCpaBiddingScheme=>{:fields=>[{:name=>:target_cpa, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetOutrankShareBiddingScheme=>{:fields=>[{:name=>:target_outrank_share, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:competitor_domain, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_cpc_bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_changes_for_raises_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:raise_bid_when_low_quality_score, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetRoasBiddingScheme=>{:fields=>[{:name=>:target_roas, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:bid_floor, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :TargetSpendBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:spend_target, :type=>"Money", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :LabelAttribute=>{:fields=>[{:name=>:label_attribute_type, :original_name=>"LabelAttribute.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Bid=>{:fields=>[{:name=>:amount, :type=>"Money", :min_occurs=>0, :max_occurs=>1}]}, :BidMultiplier=>{:fields=>[{:name=>:multiplier, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:multiplied_bid, :type=>"Bid", :min_occurs=>0, :max_occurs=>1}]}, :Bids=>{:fields=>[{:name=>:bids_type, :original_name=>"Bids.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BudgetOptimizerBiddingScheme=>{:fields=>[{:name=>:bid_ceiling, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:enhanced_cpc_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BiddingScheme"}, :Label=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"Label.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:attribute, :type=>"LabelAttribute", :min_occurs=>0, :max_occurs=>1}, {:name=>:label_type, :original_name=>"Label.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ManualCPCAdGroupExperimentBidMultipliers=>{:fields=>[{:name=>:max_cpc_multiplier, :type=>"BidMultiplier", :min_occurs=>0, :max_occurs=>1}, {:name=>:max_content_cpc_multiplier, :type=>"BidMultiplier", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupExperimentBidMultipliers"}, :ManualCPMAdGroupExperimentBidMultipliers=>{:fields=>[{:name=>:max_cpm_multiplier, :type=>"BidMultiplier", :min_occurs=>0, :max_occurs=>1}], :base=>"AdGroupExperimentBidMultipliers"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupExperimentBidMultipliers=>{:fields=>[{:name=>:ad_group_experiment_bid_multipliers_type, :original_name=>"AdGroupExperimentBidMultipliers.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AdGroupExperimentData=>{:fields=>[{:name=>:experiment_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_delta_status, :type=>"ExperimentDeltaStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_data_status, :type=>"ExperimentDataStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:experiment_bid_multipliers, :type=>"AdGroupExperimentBidMultipliers", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupLabelReturnValue=>{:fields=>[{:name=>:value, :type=>"AdGroupLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :BiddingScheme=>{:fields=>[{:name=>:bidding_scheme_type, :original_name=>"BiddingScheme.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BiddingStrategyConfiguration=>{:fields=>[{:name=>:bidding_strategy_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_type, :type=>"BiddingStrategyType", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_strategy_source, :type=>"BiddingStrategySource", :min_occurs=>0, :max_occurs=>1}, {:name=>:bidding_scheme, :type=>"BiddingScheme", :min_occurs=>0, :max_occurs=>1}, {:name=>:bids, :type=>"Bids", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdGroup=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:campaign_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"AdGroup.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:settings, :type=>"Setting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:experiment_data, :type=>"AdGroupExperimentData", :min_occurs=>0, :max_occurs=>1}, {:name=>:labels, :type=>"Label", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:forward_compatibility_map, :type=>"String_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:bidding_strategy_configuration, :type=>"BiddingStrategyConfiguration", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_bid_criterion_type_group, :type=>"CriterionTypeGroup", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_url_template, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:url_custom_parameters, :type=>"CustomParameters", :min_occurs=>0, :max_occurs=>1}]}, :AdGroupOperation=>{:fields=>[{:name=>:operand, :type=>"AdGroup", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :AdGroupPage=>{:fields=>[{:name=>:entries, :type=>"AdGroup", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :AdGroupReturnValue=>{:fields=>[{:name=>:value, :type=>"AdGroup", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:partial_failure_errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :original_name=>"ListReturnValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :original_name=>"Operation.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :original_name=>"Page.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AdGroupServiceError.Reason"=>{:fields=>[]}, :"AdGroup.Status"=>{:fields=>[]}, :"AdxError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AuthorizationError.Reason"=>{:fields=>[]}, :BidSource=>{:fields=>[]}, :"BiddingErrors.Reason"=>{:fields=>[]}, :BiddingStrategySource=>{:fields=>[]}, :BiddingStrategyType=>{:fields=>[]}, :"ClientTermsError.Reason"=>{:fields=>[]}, :"ConversionOptimizerBiddingScheme.BidType"=>{:fields=>[]}, :"ConversionOptimizerBiddingScheme.PricingMode"=>{:fields=>[]}, :CriterionTypeGroup=>{:fields=>[]}, :"DatabaseError.Reason"=>{:fields=>[]}, :"DateError.Reason"=>{:fields=>[]}, :"DistinctError.Reason"=>{:fields=>[]}, :"EntityAccessDenied.Reason"=>{:fields=>[]}, :"EntityCountLimitExceeded.Reason"=>{:fields=>[]}, :"EntityNotFound.Reason"=>{:fields=>[]}, :ExperimentDataStatus=>{:fields=>[]}, :ExperimentDeltaStatus=>{:fields=>[]}, :"ExperimentError.Reason"=>{:fields=>[]}, :"ForwardCompatibilityError.Reason"=>{:fields=>[]}, :"IdError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"Label.Status"=>{:fields=>[]}, :"MultiplierError.Reason"=>{:fields=>[]}, :"NewEntityCreationError.Reason"=>{:fields=>[]}, :"NotEmptyError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OperationAccessDenied.Reason"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"OperatorError.Reason"=>{:fields=>[]}, :"PageOnePromotedBiddingScheme.StrategyGoal"=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :"QueryError.Reason"=>{:fields=>[]}, :"QuotaCheckError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RateExceededError.Reason"=>{:fields=>[]}, :"ReadOnlyError.Reason"=>{:fields=>[]}, :"RejectedError.Reason"=>{:fields=>[]}, :"RequestError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"SelectorError.Reason"=>{:fields=>[]}, :"SettingError.Reason"=>{:fields=>[]}, :"SizeLimitError.Reason"=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"StatsQueryError.Reason"=>{:fields=>[]}, :"StringFormatError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"UrlError.Reason"=>{:fields=>[]}}
    ADGROUPSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ADGROUPSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ADGROUPSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ADGROUPSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, AdGroupServiceRegistry)
    end
  end
end; end; end
