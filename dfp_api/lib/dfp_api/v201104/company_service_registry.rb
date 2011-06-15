#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.3.1 on 2011-06-10 21:49:50.

module DfpApi; module V201104; module CompanyService
  class CompanyServiceRegistry
    COMPANYSERVICE_METHODS = {:update_company=>{:output=>{:name=>"update_company_response", :fields=>[{:type=>"Company", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Company", :max_occurs=>1, :name=>:company, :min_occurs=>0}]}, :create_companies=>{:output=>{:name=>"create_companies_response", :fields=>[{:type=>"Company", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Company", :max_occurs=>nil, :name=>:companies, :min_occurs=>0}]}, :create_company=>{:output=>{:name=>"create_company_response", :fields=>[{:type=>"Company", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Company", :max_occurs=>1, :name=>:company, :min_occurs=>0}]}, :get_companies_by_statement=>{:output=>{:name=>"get_companies_by_statement_response", :fields=>[{:type=>"CompanyPage", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Statement", :max_occurs=>1, :name=>:filter_statement, :min_occurs=>0}]}, :get_company=>{:output=>{:name=>"get_company_response", :fields=>[{:type=>"Company", :max_occurs=>1, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"long", :max_occurs=>1, :name=>:company_id, :min_occurs=>0}]}, :update_companies=>{:output=>{:name=>"update_companies_response", :fields=>[{:type=>"Company", :max_occurs=>nil, :name=>:rval, :min_occurs=>0}]}, :input=>[{:type=>"Company", :max_occurs=>nil, :name=>:companies, :min_occurs=>0}]}}
    COMPANYSERVICE_TYPES = {:TextValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :CompanyPage=>{:fields=>[{:type=>"int", :max_occurs=>1, :name=>:total_result_set_size, :min_occurs=>0}, {:type=>"int", :max_occurs=>1, :name=>:start_index, :min_occurs=>0}, {:type=>"Company", :max_occurs=>nil, :name=>:results, :min_occurs=>0}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}]}, :Statement=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:query, :min_occurs=>0}, {:type=>"String_ValueMapEntry", :max_occurs=>nil, :name=>:values, :min_occurs=>0}]}, :Value=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value_type, :min_occurs=>0}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:key, :min_occurs=>0}, {:type=>"Value", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :NumberValue=>{:base=>"Value", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :Authentication=>{:abstract=>true, :fields=>[{:type=>"string", :max_occurs=>1, :name=>:authentication_type, :min_occurs=>0}]}, :BooleanValue=>{:base=>"Value", :fields=>[{:type=>"boolean", :max_occurs=>1, :name=>:value, :min_occurs=>0}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:network_code, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:application_name, :min_occurs=>0}, {:type=>"Authentication", :max_occurs=>1, :name=>:authentication, :min_occurs=>0}]}, :Company=>{:fields=>[{:type=>"long", :max_occurs=>1, :name=>:id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:name, :min_occurs=>0}, {:type=>"Company.Type", :max_occurs=>1, :name=>:type, :min_occurs=>0}]}, :OAuth=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:parameters, :min_occurs=>0}]}, :ClientLogin=>{:base=>"Authentication", :fields=>[{:type=>"string", :max_occurs=>1, :name=>:token, :min_occurs=>0}]}}

    def self.get_method_signature(method_name)
      return COMPANYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return COMPANYSERVICE_TYPES[type_name.to_sym]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields = [] if !defined?(@array_fields)
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end