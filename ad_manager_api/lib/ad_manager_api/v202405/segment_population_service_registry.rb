# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2024, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 2.0.1 on 2024-08-14 18:09:31.

require 'ad_manager_api/errors'

module AdManagerApi; module V202405; module SegmentPopulationService
  class SegmentPopulationServiceRegistry
    SEGMENTPOPULATIONSERVICE_METHODS = {:get_segment_population_results_by_ids=>{:input=>[{:name=>:batch_upload_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"get_segment_population_results_by_ids_response", :fields=>[{:name=>:rval, :type=>"SegmentPopulationResults", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :perform_segment_population_action=>{:input=>[{:name=>:action, :type=>"SegmentPopulationAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:batch_upload_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"perform_segment_population_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_segment_memberships=>{:input=>[{:name=>:update_request, :type=>"SegmentPopulationRequest", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_segment_memberships_response", :fields=>[{:name=>:rval, :type=>"SegmentPopulationResponse", :min_occurs=>0, :max_occurs=>1}]}}}
    SEGMENTPOPULATIONSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :IdError=>{:fields=>[{:name=>:index, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_type, :type=>"IdError.IdErrorType", :min_occurs=>0, :max_occurs=>1}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProcessAction=>{:fields=>[], :base=>"SegmentPopulationAction"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SegmentPopulationAction=>{:fields=>[], :abstract=>true}, :SegmentPopulationError=>{:fields=>[{:name=>:reason, :type=>"SegmentPopulationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SegmentPopulationRequest=>{:fields=>[{:name=>:batch_upload_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:segment_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_deletion, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:identifier_type, :type=>"IdentifierType", :min_occurs=>0, :max_occurs=>1}, {:name=>:ids, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:consent_type, :type=>"ConsentType", :min_occurs=>0, :max_occurs=>1}]}, :SegmentPopulationResponse=>{:fields=>[{:name=>:batch_upload_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:id_errors, :type=>"IdError", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SegmentPopulationResults=>{:fields=>[{:name=>:batch_upload_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:segment_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"SegmentPopulationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_successful_ids_processed, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:errors, :type=>"IdError", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :"ApiVersionError.Reason"=>{:type=>"string", :enumerations=>["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, :"AuthenticationError.Reason"=>{:type=>"string", :enumerations=>["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, :"CollectionSizeError.Reason"=>{:type=>"string", :enumerations=>["TOO_LARGE", "UNKNOWN"]}, :"CommonError.Reason"=>{:type=>"string", :enumerations=>["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, :ConsentType=>{:type=>"string", :enumerations=>["UNSET", "GRANTED", "DENIED", "UNKNOWN"]}, :"FeatureError.Reason"=>{:type=>"string", :enumerations=>["MISSING_FEATURE", "UNKNOWN"]}, :"IdError.IdErrorType"=>{:type=>"string", :enumerations=>["INVALID_PUBLISHER_PROVIDED_ID_FORMAT", "UNKNOWN"]}, :IdentifierType=>{:type=>"string", :enumerations=>["PUBLISHER_PROVIDED_IDENTIFIER", "UNKNOWN"]}, :"InternalApiError.Reason"=>{:type=>"string", :enumerations=>["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, :"NotNullError.Reason"=>{:type=>"string", :enumerations=>["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, :"ParseError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"PermissionError.Reason"=>{:type=>"string", :enumerations=>["PERMISSION_DENIED", "UNKNOWN"]}, :"PublisherQueryLanguageContextError.Reason"=>{:type=>"string", :enumerations=>["UNEXECUTABLE", "UNKNOWN"]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:type=>"string", :enumerations=>["UNPARSABLE", "UNKNOWN"]}, :"QuotaError.Reason"=>{:type=>"string", :enumerations=>["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, :"RequiredCollectionError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, :"RequiredError.Reason"=>{:type=>"string", :enumerations=>["REQUIRED"]}, :"SegmentPopulationError.Reason"=>{:type=>"string", :enumerations=>["TOO_MANY_IDENTIFIERS", "INVALID_SEGMENT", "JOB_ALREADY_STARTED", "NO_IDENTIFIERS", "NO_CONSENT", "UNKNOWN"]}, :SegmentPopulationStatus=>{:type=>"string", :enumerations=>["FAILED", "SUCCESS", "PROCESSING", "PREPARING", "EXPIRED", "UNKNOWN"]}, :"ServerError.Reason"=>{:type=>"string", :enumerations=>["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, :"StringFormatError.Reason"=>{:type=>"string", :enumerations=>["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, :"StringLengthError.Reason"=>{:type=>"string", :enumerations=>["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}}
    SEGMENTPOPULATIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return SEGMENTPOPULATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return SEGMENTPOPULATIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return SEGMENTPOPULATIONSERVICE_NAMESPACES[index]
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
      super(exception_fault, SegmentPopulationServiceRegistry)
    end
  end
end; end; end
