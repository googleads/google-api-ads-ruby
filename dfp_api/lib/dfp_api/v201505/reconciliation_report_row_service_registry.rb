# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.8 on 2015-04-28 16:45:17.

require 'dfp_api/errors'

module DfpApi; module V201505; module ReconciliationReportRowService
  class ReconciliationReportRowServiceRegistry
    RECONCILIATIONREPORTROWSERVICE_METHODS = {:get_reconciliation_report_rows_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_reconciliation_report_rows_by_statement_response", :fields=>[{:name=>:rval, :type=>"ReconciliationReportRowPage", :min_occurs=>0, :max_occurs=>1}]}}, :update_reconciliation_report_rows=>{:input=>[{:name=>:reconciliation_report_rows, :type=>"ReconciliationReportRow", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_reconciliation_report_rows_response", :fields=>[{:name=>:rval, :type=>"ReconciliationReportRow", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    RECONCILIATIONREPORTROWSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReconciliationError=>{:fields=>[{:name=>:reason, :type=>"ReconciliationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReconciliationImportError=>{:fields=>[{:name=>:reason, :type=>"ReconciliationImportError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReconciliationReportRow=>{:fields=>[{:name=>:reconciliation_report_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposal_line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposal_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:bill_from, :type=>"BillFrom", :min_occurs=>0, :max_occurs=>1}, {:name=>:rate_type, :type=>"RateType", :min_occurs=>0, :max_occurs=>1}, {:name=>:line_item_cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:line_item_contracted_units_bought, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:dfp_volume, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_volume, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:manual_volume, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:reconciled_volume, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:contracted_revenue, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:dfp_revenue, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_revenue, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:manual_revenue, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:reconciled_revenue, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:comments, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ReconciliationReportRowPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"ReconciliationReportRow", :min_occurs=>0, :max_occurs=>:unbounded}]}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :Value=>{:fields=>[], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :BillFrom=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :RateType=>{:fields=>[]}, :"ReconciliationError.Reason"=>{:fields=>[]}, :"ReconciliationImportError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}}
    RECONCILIATIONREPORTROWSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return RECONCILIATIONREPORTROWSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return RECONCILIATIONREPORTROWSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return RECONCILIATIONREPORTROWSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, ReconciliationReportRowServiceRegistry)
    end
  end
end; end; end
