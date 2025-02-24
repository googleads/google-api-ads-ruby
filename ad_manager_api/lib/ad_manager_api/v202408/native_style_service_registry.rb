# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2025, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 3.0.0 on 2025-02-19 19:21:12.

require 'ad_manager_api/errors'

module AdManagerApi; module V202408; module NativeStyleService
  class NativeStyleServiceRegistry
    NATIVESTYLESERVICE_METHODS = {create_native_styles: {input: [{name: :native_styles, type: "NativeStyle", min_occurs: 0, max_occurs: :unbounded}], output: {name: "create_native_styles_response", fields: [{name: :rval, type: "NativeStyle", min_occurs: 0, max_occurs: :unbounded}]}}, get_native_styles_by_statement: {input: [{name: :filter_statement, type: "Statement", min_occurs: 0, max_occurs: 1}], output: {name: "get_native_styles_by_statement_response", fields: [{name: :rval, type: "NativeStylePage", min_occurs: 0, max_occurs: 1}]}}, perform_native_style_action: {input: [{name: :native_style_action, type: "NativeStyleAction", min_occurs: 0, max_occurs: 1}, {name: :filter_statement, type: "Statement", min_occurs: 0, max_occurs: 1}], output: {name: "perform_native_style_action_response", fields: [{name: :rval, type: "UpdateResult", min_occurs: 0, max_occurs: 1}]}}, update_native_styles: {input: [{name: :native_styles, type: "NativeStyle", min_occurs: 0, max_occurs: :unbounded}], output: {name: "update_native_styles_response", fields: [{name: :rval, type: "NativeStyle", min_occurs: 0, max_occurs: :unbounded}]}}}
    NATIVESTYLESERVICE_TYPES = {ObjectValue: {fields: [], abstract: true, base: "Value"}, ActivateNativeStyles: {fields: [], base: "NativeStyleAction"}, AdUnitTargeting: {fields: [{name: :ad_unit_id, type: "string", min_occurs: 0, max_occurs: 1}, {name: :include_descendants, type: "boolean", min_occurs: 0, max_occurs: 1}]}, ApiError: {fields: [{name: :field_path, type: "string", min_occurs: 0, max_occurs: 1}, {name: :field_path_elements, type: "FieldPathElement", min_occurs: 0, max_occurs: :unbounded}, {name: :trigger, type: "string", min_occurs: 0, max_occurs: 1}, {name: :error_string, type: "string", min_occurs: 0, max_occurs: 1}], abstract: true}, ApiException: {fields: [{name: :errors, type: "ApiError", min_occurs: 0, max_occurs: :unbounded}], base: "ApplicationException"}, TechnologyTargeting: {fields: [{name: :bandwidth_group_targeting, type: "BandwidthGroupTargeting", min_occurs: 0, max_occurs: 1}, {name: :browser_targeting, type: "BrowserTargeting", min_occurs: 0, max_occurs: 1}, {name: :browser_language_targeting, type: "BrowserLanguageTargeting", min_occurs: 0, max_occurs: 1}, {name: :device_capability_targeting, type: "DeviceCapabilityTargeting", min_occurs: 0, max_occurs: 1}, {name: :device_category_targeting, type: "DeviceCategoryTargeting", min_occurs: 0, max_occurs: 1}, {name: :device_manufacturer_targeting, type: "DeviceManufacturerTargeting", min_occurs: 0, max_occurs: 1}, {name: :mobile_carrier_targeting, type: "MobileCarrierTargeting", min_occurs: 0, max_occurs: 1}, {name: :mobile_device_targeting, type: "MobileDeviceTargeting", min_occurs: 0, max_occurs: 1}, {name: :mobile_device_submodel_targeting, type: "MobileDeviceSubmodelTargeting", min_occurs: 0, max_occurs: 1}, {name: :operating_system_targeting, type: "OperatingSystemTargeting", min_occurs: 0, max_occurs: 1}, {name: :operating_system_version_targeting, type: "OperatingSystemVersionTargeting", min_occurs: 0, max_occurs: 1}]}, ApiVersionError: {fields: [{name: :reason, type: "ApiVersionError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, ApplicationException: {fields: [{name: :message, type: "string", min_occurs: 0, max_occurs: 1}]}, ArchiveNativeStyles: {fields: [], base: "NativeStyleAction"}, AuthenticationError: {fields: [{name: :reason, type: "AuthenticationError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, BandwidthGroup: {fields: [], base: "Technology"}, BandwidthGroupTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :bandwidth_groups, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, BooleanValue: {fields: [{name: :value, type: "boolean", min_occurs: 0, max_occurs: 1}], base: "Value"}, Browser: {fields: [{name: :major_version, type: "string", min_occurs: 0, max_occurs: 1}, {name: :minor_version, type: "string", min_occurs: 0, max_occurs: 1}], base: "Technology"}, BrowserLanguage: {fields: [], base: "Technology"}, BrowserLanguageTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :browser_languages, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, BrowserTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :browsers, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, BuyerUserListTargeting: {fields: [{name: :has_buyer_user_list_targeting, type: "boolean", min_occurs: 0, max_occurs: 1}]}, CollectionSizeError: {fields: [{name: :reason, type: "CollectionSizeError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, CommonError: {fields: [{name: :reason, type: "CommonError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, ContentLabelTargeting: {fields: [{name: :excluded_content_label_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}]}, ContentTargeting: {fields: [{name: :targeted_content_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_content_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :targeted_video_content_bundle_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_video_content_bundle_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}]}, CreativeTemplateError: {fields: [{name: :reason, type: "CreativeTemplateError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, CustomCriteria: {fields: [{name: :key_id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :value_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :operator, type: "CustomCriteria.ComparisonOperator", min_occurs: 0, max_occurs: 1}], base: "CustomCriteriaLeaf"}, CustomCriteriaSet: {fields: [{name: :logical_operator, type: "CustomCriteriaSet.LogicalOperator", min_occurs: 0, max_occurs: 1}, {name: :children, type: "CustomCriteriaNode", min_occurs: 0, max_occurs: :unbounded}], base: "CustomCriteriaNode"}, CmsMetadataCriteria: {fields: [{name: :operator, type: "CmsMetadataCriteria.ComparisonOperator", min_occurs: 0, max_occurs: 1}, {name: :cms_metadata_value_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}], base: "CustomCriteriaLeaf"}, CustomTargetingError: {fields: [{name: :reason, type: "CustomTargetingError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, CustomCriteriaLeaf: {fields: [], abstract: true, base: "CustomCriteriaNode"}, CustomCriteriaNode: {fields: [], abstract: true}, AudienceSegmentCriteria: {fields: [{name: :operator, type: "AudienceSegmentCriteria.ComparisonOperator", min_occurs: 0, max_occurs: 1}, {name: :audience_segment_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}], base: "CustomCriteriaLeaf"}, Date: {fields: [{name: :year, type: "int", min_occurs: 0, max_occurs: 1}, {name: :month, type: "int", min_occurs: 0, max_occurs: 1}, {name: :day, type: "int", min_occurs: 0, max_occurs: 1}]}, DateTime: {fields: [{name: :date, type: "Date", min_occurs: 0, max_occurs: 1}, {name: :hour, type: "int", min_occurs: 0, max_occurs: 1}, {name: :minute, type: "int", min_occurs: 0, max_occurs: 1}, {name: :second, type: "int", min_occurs: 0, max_occurs: 1}, {name: :time_zone_id, type: "string", min_occurs: 0, max_occurs: 1}]}, DateTimeRange: {fields: [{name: :start_date_time, type: "DateTime", min_occurs: 0, max_occurs: 1}, {name: :end_date_time, type: "DateTime", min_occurs: 0, max_occurs: 1}]}, DateTimeRangeTargeting: {fields: [{name: :targeted_date_time_ranges, type: "DateTimeRange", min_occurs: 0, max_occurs: :unbounded}]}, DateTimeValue: {fields: [{name: :value, type: "DateTime", min_occurs: 0, max_occurs: 1}], base: "Value"}, DateValue: {fields: [{name: :value, type: "Date", min_occurs: 0, max_occurs: 1}], base: "Value"}, DayPart: {fields: [{name: :day_of_week, type: "DayOfWeek", min_occurs: 0, max_occurs: 1}, {name: :start_time, type: "TimeOfDay", min_occurs: 0, max_occurs: 1}, {name: :end_time, type: "TimeOfDay", min_occurs: 0, max_occurs: 1}]}, DayPartTargeting: {fields: [{name: :day_parts, type: "DayPart", min_occurs: 0, max_occurs: :unbounded}, {name: :time_zone, type: "DeliveryTimeZone", min_occurs: 0, max_occurs: 1}]}, DeactivateNativeStyles: {fields: [], base: "NativeStyleAction"}, DeviceCapability: {fields: [], base: "Technology"}, DeviceCapabilityTargeting: {fields: [{name: :targeted_device_capabilities, type: "Technology", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_device_capabilities, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, DeviceCategory: {fields: [], base: "Technology"}, DeviceCategoryTargeting: {fields: [{name: :targeted_device_categories, type: "Technology", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_device_categories, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, DeviceManufacturer: {fields: [], base: "Technology"}, DeviceManufacturerTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :device_manufacturers, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, EntityChildrenLimitReachedError: {fields: [{name: :reason, type: "EntityChildrenLimitReachedError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, FeatureError: {fields: [{name: :reason, type: "FeatureError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, FieldPathElement: {fields: [{name: :field, type: "string", min_occurs: 0, max_occurs: 1}, {name: :index, type: "int", min_occurs: 0, max_occurs: 1}]}, GeoTargeting: {fields: [{name: :targeted_locations, type: "Location", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_locations, type: "Location", min_occurs: 0, max_occurs: :unbounded}]}, ImageError: {fields: [{name: :reason, type: "ImageError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, InternalApiError: {fields: [{name: :reason, type: "InternalApiError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, InvalidUrlError: {fields: [{name: :reason, type: "InvalidUrlError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, InventorySizeTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :targeted_sizes, type: "TargetedSize", min_occurs: 0, max_occurs: :unbounded}]}, InventoryTargeting: {fields: [{name: :targeted_ad_units, type: "AdUnitTargeting", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_ad_units, type: "AdUnitTargeting", min_occurs: 0, max_occurs: :unbounded}, {name: :targeted_placement_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}]}, InventoryTargetingError: {fields: [{name: :reason, type: "InventoryTargetingError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, InventoryUrl: {fields: [{name: :id, type: "long", min_occurs: 0, max_occurs: 1}]}, InventoryUrlTargeting: {fields: [{name: :targeted_urls, type: "InventoryUrl", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_urls, type: "InventoryUrl", min_occurs: 0, max_occurs: :unbounded}]}, Location: {fields: [{name: :id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :type, type: "string", min_occurs: 0, max_occurs: 1}, {name: :canonical_parent_id, type: "int", min_occurs: 0, max_occurs: 1}, {name: :display_name, type: "string", min_occurs: 0, max_occurs: 1}]}, MobileApplicationTargeting: {fields: [{name: :mobile_application_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}]}, MobileCarrier: {fields: [], base: "Technology"}, MobileCarrierTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :mobile_carriers, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, MobileDevice: {fields: [{name: :manufacturer_criterion_id, type: "long", min_occurs: 0, max_occurs: 1}], base: "Technology"}, MobileDeviceSubmodel: {fields: [{name: :mobile_device_criterion_id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :device_manufacturer_criterion_id, type: "long", min_occurs: 0, max_occurs: 1}], base: "Technology"}, MobileDeviceSubmodelTargeting: {fields: [{name: :targeted_mobile_device_submodels, type: "Technology", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_mobile_device_submodels, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, MobileDeviceTargeting: {fields: [{name: :targeted_mobile_devices, type: "Technology", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_mobile_devices, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, NativeStyleAction: {fields: [], abstract: true}, NativeStyle: {fields: [{name: :id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :name, type: "string", min_occurs: 0, max_occurs: 1}, {name: :html_snippet, type: "string", min_occurs: 0, max_occurs: 1}, {name: :css_snippet, type: "string", min_occurs: 0, max_occurs: 1}, {name: :creative_template_id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :is_fluid, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :targeting, type: "Targeting", min_occurs: 0, max_occurs: 1}, {name: :status, type: "NativeStyleStatus", min_occurs: 0, max_occurs: 1}, {name: :size, type: "Size", min_occurs: 0, max_occurs: 1}]}, NativeStyleError: {fields: [{name: :reason, type: "NativeStyleError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, NativeStylePage: {fields: [{name: :total_result_set_size, type: "int", min_occurs: 0, max_occurs: 1}, {name: :start_index, type: "int", min_occurs: 0, max_occurs: 1}, {name: :results, type: "NativeStyle", min_occurs: 0, max_occurs: :unbounded}]}, NotNullError: {fields: [{name: :reason, type: "NotNullError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, NullError: {fields: [{name: :reason, type: "NullError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, NumberValue: {fields: [{name: :value, type: "string", min_occurs: 0, max_occurs: 1}], base: "Value"}, OperatingSystem: {fields: [], base: "Technology"}, OperatingSystemTargeting: {fields: [{name: :is_targeted, type: "boolean", min_occurs: 0, max_occurs: 1}, {name: :operating_systems, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, OperatingSystemVersion: {fields: [{name: :major_version, type: "int", min_occurs: 0, max_occurs: 1}, {name: :minor_version, type: "int", min_occurs: 0, max_occurs: 1}, {name: :micro_version, type: "int", min_occurs: 0, max_occurs: 1}], base: "Technology"}, OperatingSystemVersionTargeting: {fields: [{name: :targeted_operating_system_versions, type: "Technology", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_operating_system_versions, type: "Technology", min_occurs: 0, max_occurs: :unbounded}]}, ParseError: {fields: [{name: :reason, type: "ParseError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, PermissionError: {fields: [{name: :reason, type: "PermissionError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, PublisherQueryLanguageContextError: {fields: [{name: :reason, type: "PublisherQueryLanguageContextError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, PublisherQueryLanguageSyntaxError: {fields: [{name: :reason, type: "PublisherQueryLanguageSyntaxError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, QuotaError: {fields: [{name: :reason, type: "QuotaError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, RequestPlatformTargeting: {fields: [{name: :targeted_request_platforms, type: "RequestPlatform", min_occurs: 0, max_occurs: :unbounded}]}, RequiredCollectionError: {fields: [{name: :reason, type: "RequiredCollectionError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, RequiredError: {fields: [{name: :reason, type: "RequiredError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, RequiredSizeError: {fields: [{name: :reason, type: "RequiredSizeError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, ServerError: {fields: [{name: :reason, type: "ServerError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, SetValue: {fields: [{name: :values, type: "Value", min_occurs: 0, max_occurs: :unbounded}], base: "Value"}, Size: {fields: [{name: :width, type: "int", min_occurs: 0, max_occurs: 1}, {name: :height, type: "int", min_occurs: 0, max_occurs: 1}, {name: :is_aspect_ratio, type: "boolean", min_occurs: 0, max_occurs: 1}]}, SoapRequestHeader: {fields: [{name: :network_code, type: "string", min_occurs: 0, max_occurs: 1}, {name: :application_name, type: "string", min_occurs: 0, max_occurs: 1}]}, SoapResponseHeader: {fields: [{name: :request_id, type: "string", min_occurs: 0, max_occurs: 1}, {name: :response_time, type: "long", min_occurs: 0, max_occurs: 1}]}, Statement: {fields: [{name: :query, type: "string", min_occurs: 0, max_occurs: 1}, {name: :values, type: "String_ValueMapEntry", min_occurs: 0, max_occurs: :unbounded}]}, StatementError: {fields: [{name: :reason, type: "StatementError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, StringFormatError: {fields: [{name: :reason, type: "StringFormatError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, StringLengthError: {fields: [{name: :reason, type: "StringLengthError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, String_ValueMapEntry: {fields: [{name: :key, type: "string", min_occurs: 0, max_occurs: 1}, {name: :value, type: "Value", min_occurs: 0, max_occurs: 1}]}, TargetedSize: {fields: [{name: :size, type: "Size", min_occurs: 0, max_occurs: 1}]}, Targeting: {fields: [{name: :geo_targeting, type: "GeoTargeting", min_occurs: 0, max_occurs: 1}, {name: :inventory_targeting, type: "InventoryTargeting", min_occurs: 0, max_occurs: 1}, {name: :day_part_targeting, type: "DayPartTargeting", min_occurs: 0, max_occurs: 1}, {name: :date_time_range_targeting, type: "DateTimeRangeTargeting", min_occurs: 0, max_occurs: 1}, {name: :technology_targeting, type: "TechnologyTargeting", min_occurs: 0, max_occurs: 1}, {name: :custom_targeting, type: "CustomCriteriaSet", min_occurs: 0, max_occurs: 1}, {name: :user_domain_targeting, type: "UserDomainTargeting", min_occurs: 0, max_occurs: 1}, {name: :content_targeting, type: "ContentTargeting", min_occurs: 0, max_occurs: 1}, {name: :video_position_targeting, type: "VideoPositionTargeting", min_occurs: 0, max_occurs: 1}, {name: :mobile_application_targeting, type: "MobileApplicationTargeting", min_occurs: 0, max_occurs: 1}, {name: :buyer_user_list_targeting, type: "BuyerUserListTargeting", min_occurs: 0, max_occurs: 1}, {name: :inventory_url_targeting, type: "InventoryUrlTargeting", min_occurs: 0, max_occurs: 1}, {name: :vertical_targeting, type: "VerticalTargeting", min_occurs: 0, max_occurs: 1}, {name: :content_label_targeting, type: "ContentLabelTargeting", min_occurs: 0, max_occurs: 1}, {name: :request_platform_targeting, type: "RequestPlatformTargeting", min_occurs: 0, max_occurs: 1}, {name: :inventory_size_targeting, type: "InventorySizeTargeting", min_occurs: 0, max_occurs: 1}]}, TeamError: {fields: [{name: :reason, type: "TeamError.Reason", min_occurs: 0, max_occurs: 1}], base: "ApiError"}, Technology: {fields: [{name: :id, type: "long", min_occurs: 0, max_occurs: 1}, {name: :name, type: "string", min_occurs: 0, max_occurs: 1}]}, TextValue: {fields: [{name: :value, type: "string", min_occurs: 0, max_occurs: 1}], base: "Value"}, TimeOfDay: {fields: [{name: :hour, type: "int", min_occurs: 0, max_occurs: 1}, {name: :minute, type: "MinuteOfHour", min_occurs: 0, max_occurs: 1}]}, UniqueError: {fields: [], base: "ApiError"}, UpdateResult: {fields: [{name: :num_changes, type: "int", min_occurs: 0, max_occurs: 1}]}, UserDomainTargeting: {fields: [{name: :domains, type: "string", min_occurs: 0, max_occurs: :unbounded}, {name: :targeted, type: "boolean", min_occurs: 0, max_occurs: 1}]}, Value: {fields: [], abstract: true}, VerticalTargeting: {fields: [{name: :targeted_vertical_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}, {name: :excluded_vertical_ids, type: "long", min_occurs: 0, max_occurs: :unbounded}]}, VideoPosition: {fields: [{name: :position_type, type: "VideoPosition.Type", min_occurs: 0, max_occurs: 1}, {name: :midroll_index, type: "int", min_occurs: 0, max_occurs: 1}]}, VideoPositionTargeting: {fields: [{name: :targeted_positions, type: "VideoPositionTarget", min_occurs: 0, max_occurs: :unbounded}]}, VideoPositionWithinPod: {fields: [{name: :index, type: "int", min_occurs: 0, max_occurs: 1}]}, VideoPositionTarget: {fields: [{name: :video_position, type: "VideoPosition", min_occurs: 0, max_occurs: 1}, {name: :video_bumper_type, type: "VideoBumperType", min_occurs: 0, max_occurs: 1}, {name: :video_position_within_pod, type: "VideoPositionWithinPod", min_occurs: 0, max_occurs: 1}, {name: :ad_spot_id, type: "long", min_occurs: 0, max_occurs: 1}]}, "ApiVersionError.Reason": {type: "string", enumerations: ["UPDATE_TO_NEWER_VERSION", "UNKNOWN"]}, "AuthenticationError.Reason": {type: "string", enumerations: ["AMBIGUOUS_SOAP_REQUEST_HEADER", "INVALID_EMAIL", "AUTHENTICATION_FAILED", "INVALID_OAUTH_SIGNATURE", "INVALID_SERVICE", "MISSING_SOAP_REQUEST_HEADER", "MISSING_AUTHENTICATION_HTTP_HEADER", "MISSING_AUTHENTICATION", "NETWORK_API_ACCESS_DISABLED", "NO_NETWORKS_TO_ACCESS", "NETWORK_NOT_FOUND", "NETWORK_CODE_REQUIRED", "CONNECTION_ERROR", "GOOGLE_ACCOUNT_ALREADY_ASSOCIATED_WITH_NETWORK", "UNDER_INVESTIGATION", "UNKNOWN"]}, "CollectionSizeError.Reason": {type: "string", enumerations: ["TOO_LARGE", "UNKNOWN"]}, "CommonError.Reason": {type: "string", enumerations: ["NOT_FOUND", "ALREADY_EXISTS", "NOT_APPLICABLE", "DUPLICATE_OBJECT", "CANNOT_UPDATE", "UNSUPPORTED_OPERATION", "CONCURRENT_MODIFICATION", "UNKNOWN"]}, "CreativeTemplateError.Reason": {type: "string", enumerations: ["CANNOT_PARSE_CREATIVE_TEMPLATE", "VARIABLE_DUPLICATE_UNIQUE_NAME", "VARIABLE_INVALID_UNIQUE_NAME", "LIST_CHOICE_DUPLICATE_VALUE", "LIST_CHOICE_NEEDS_DEFAULT", "LIST_CHOICES_EMPTY", "NO_TARGET_PLATFORMS", "MULTIPLE_TARGET_PLATFORMS", "UNRECOGNIZED_PLACEHOLDER", "PLACEHOLDERS_NOT_IN_FORMATTER", "MISSING_INTERSTITIAL_MACRO", "UNKNOWN"]}, "CustomCriteria.ComparisonOperator": {type: "string", enumerations: ["IS", "IS_NOT"]}, "CustomCriteriaSet.LogicalOperator": {type: "string", enumerations: ["AND", "OR"]}, "CmsMetadataCriteria.ComparisonOperator": {type: "string", enumerations: ["EQUALS", "NOT_EQUALS"]}, "CustomTargetingError.Reason": {type: "string", enumerations: ["KEY_NOT_FOUND", "KEY_COUNT_TOO_LARGE", "KEY_NAME_DUPLICATE", "KEY_NAME_EMPTY", "KEY_NAME_INVALID_LENGTH", "KEY_NAME_INVALID_CHARS", "KEY_NAME_RESERVED", "KEY_DISPLAY_NAME_INVALID_LENGTH", "KEY_STATUS_NOT_ACTIVE", "VALUE_NOT_FOUND", "GET_VALUES_BY_STATEMENT_MUST_CONTAIN_KEY_ID", "VALUE_COUNT_FOR_KEY_TOO_LARGE", "VALUE_NAME_DUPLICATE", "VALUE_NAME_EMPTY", "VALUE_NAME_INVALID_LENGTH", "VALUE_NAME_INVALID_CHARS", "VALUE_DISPLAY_NAME_INVALID_LENGTH", "VALUE_MATCH_TYPE_NOT_ALLOWED", "VALUE_MATCH_TYPE_NOT_EXACT_FOR_PREDEFINED_KEY", "SUFFIX_MATCH_TYPE_NOT_ALLOWED", "CONTAINS_MATCH_TYPE_NOT_ALLOWED", "VALUE_STATUS_NOT_ACTIVE", "KEY_WITH_MISSING_VALUES", "INVALID_VALUE_FOR_KEY", "CANNOT_OR_DIFFERENT_KEYS", "INVALID_TARGETING_EXPRESSION", "DELETED_KEY_CANNOT_BE_USED_FOR_TARGETING", "DELETED_VALUE_CANNOT_BE_USED_FOR_TARGETING", "VIDEO_BROWSE_BY_KEY_CANNOT_BE_USED_FOR_CUSTOM_TARGETING", "CANNOT_DELETE_CUSTOM_KEY_USED_IN_PARTNER_ASSIGNMENT_TARGETING", "CANNOT_DELETE_CUSTOM_VALUE_USED_IN_PARTNER_ASSIGNMENT_TARGETING", "CANNOT_TARGET_AUDIENCE_SEGMENT", "CANNOT_TARGET_THIRD_PARTY_AUDIENCE_SEGMENT", "CANNOT_TARGET_INACTIVE_AUDIENCE_SEGMENT", "INVALID_AUDIENCE_SEGMENTS", "CANNOT_TARGET_MAPPED_METADATA", "ONLY_APPROVED_AUDIENCE_SEGMENTS_CAN_BE_TARGETED", "UNKNOWN"]}, "AudienceSegmentCriteria.ComparisonOperator": {type: "string", enumerations: ["IS", "IS_NOT"]}, DayOfWeek: {type: "string", enumerations: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]}, DeliveryTimeZone: {type: "string", enumerations: ["PUBLISHER", "BROWSER"]}, "EntityChildrenLimitReachedError.Reason": {type: "string", enumerations: ["LINE_ITEM_LIMIT_FOR_ORDER_REACHED", "CREATIVE_ASSOCIATION_LIMIT_FOR_LINE_ITEM_REACHED", "AD_UNIT_LIMIT_FOR_PLACEMENT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_LINE_ITEM_REACHED", "TARGETING_EXPRESSION_SIZE_LIMIT_REACHED", "CUSTOM_TARGETING_VALUES_FOR_KEY_LIMIT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_CREATIVES_ON_LINE_ITEM_REACHED", "ATTACHMENT_LIMIT_FOR_PROPOSAL_REACHED", "PROPOSAL_LINE_ITEM_LIMIT_FOR_PROPOSAL_REACHED", "PRODUCT_LIMIT_FOR_PRODUCT_PACKAGE_REACHED", "PRODUCT_TEMPLATE_AND_PRODUCT_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PRODUCT_PACKAGE_ITEM_BASE_RATE_LIMIT_FOR_RATE_CARD_REACHED", "PREMIUM_LIMIT_FOR_RATE_CARD_REACHED", "AD_UNIT_LIMIT_FOR_AD_EXCLUSION_RULE_TARGETING_REACHED", "NATIVE_STYLE_LIMIT_FOR_NATIVE_AD_FORMAT_REACHED", "TARGETING_EXPRESSION_LIMIT_FOR_PRESENTATION_ASSIGNMENT_REACHED", "UNKNOWN"]}, "FeatureError.Reason": {type: "string", enumerations: ["MISSING_FEATURE", "UNKNOWN"]}, "ImageError.Reason": {type: "string", enumerations: ["INVALID_IMAGE", "INVALID_SIZE", "UNEXPECTED_SIZE", "OVERLAY_SIZE_TOO_LARGE", "ANIMATED_NOT_ALLOWED", "ANIMATION_TOO_LONG", "CMYK_JPEG_NOT_ALLOWED", "FLASH_NOT_ALLOWED", "FLASH_WITHOUT_CLICKTAG", "ANIMATED_VISUAL_EFFECT", "FLASH_ERROR", "LAYOUT_PROBLEM", "FLASH_HAS_NETWORK_OBJECTS", "FLASH_HAS_NETWORK_METHODS", "FLASH_HAS_URL", "FLASH_HAS_MOUSE_TRACKING", "FLASH_HAS_RANDOM_NUM", "FLASH_SELF_TARGETS", "FLASH_BAD_GETURL_TARGET", "FLASH_VERSION_NOT_SUPPORTED", "FILE_TOO_LARGE", "SYSTEM_ERROR_IRS", "SYSTEM_ERROR_SCS", "UNEXPECTED_PRIMARY_ASSET_DENSITY", "DUPLICATE_ASSET_DENSITY", "MISSING_DEFAULT_ASSET", "PREVERIFIED_MIMETYPE_NOT_ALLOWED", "UNKNOWN"]}, "InternalApiError.Reason": {type: "string", enumerations: ["UNEXPECTED_INTERNAL_API_ERROR", "TRANSIENT_ERROR", "UNKNOWN", "DOWNTIME", "ERROR_GENERATING_RESPONSE"]}, "InvalidUrlError.Reason": {type: "string", enumerations: ["ILLEGAL_CHARACTERS", "INVALID_FORMAT", "INSECURE_SCHEME", "NO_SCHEME", "UNKNOWN"]}, "InventoryTargetingError.Reason": {type: "string", enumerations: ["AT_LEAST_ONE_PLACEMENT_OR_INVENTORY_UNIT_REQUIRED", "INVENTORY_CANNOT_BE_TARGETED_AND_EXCLUDED", "INVENTORY_UNIT_CANNOT_BE_TARGETED_IF_ANCESTOR_IS_TARGETED", "INVENTORY_UNIT_CANNOT_BE_TARGETED_IF_ANCESTOR_IS_EXCLUDED", "INVENTORY_UNIT_CANNOT_BE_EXCLUDED_IF_ANCESTOR_IS_EXCLUDED", "EXPLICITLY_TARGETED_INVENTORY_UNIT_CANNOT_BE_TARGETED", "EXPLICITLY_TARGETED_INVENTORY_UNIT_CANNOT_BE_EXCLUDED", "SELF_ONLY_INVENTORY_UNIT_NOT_ALLOWED", "SELF_ONLY_INVENTORY_UNIT_WITHOUT_DESCENDANTS", "YOUTUBE_AUDIENCE_SEGMENTS_CAN_ONLY_BE_TARGETED_WITH_YOUTUBE_SHARED_INVENTORY", "UNKNOWN"]}, MinuteOfHour: {type: "string", enumerations: ["ZERO", "FIFTEEN", "THIRTY", "FORTY_FIVE"]}, "NativeStyleError.Reason": {type: "string", enumerations: ["ACTIVE_CREATIVE_TEMPLATE_REQUIRED", "INVALID_CUSTOM_TARGETING_MATCH_TYPE", "INVALID_INVENTORY_TARTGETING_TYPE", "INVALID_STATUS", "INVALID_TARGETING_TYPE", "NATIVE_CREATIVE_TEMPLATE_REQUIRED", "TOO_MANY_CUSTOM_TARGETING_KEY_VALUES", "UNIQUE_SNIPPET_REQUIRED", "UNRECOGNIZED_MACRO", "UNRECOGNIZED_PLACEHOLDER", "UNKNOWN"]}, NativeStyleStatus: {type: "string", enumerations: ["ACTIVE", "ARCHIVED", "INACTIVE", "UNKNOWN"]}, "NotNullError.Reason": {type: "string", enumerations: ["ARG1_NULL", "ARG2_NULL", "ARG3_NULL", "NULL", "UNKNOWN"]}, "NullError.Reason": {type: "string", enumerations: ["NOT_NULL", "UNKNOWN"]}, "ParseError.Reason": {type: "string", enumerations: ["UNPARSABLE", "UNKNOWN"]}, "PermissionError.Reason": {type: "string", enumerations: ["PERMISSION_DENIED", "UNKNOWN"]}, "PublisherQueryLanguageContextError.Reason": {type: "string", enumerations: ["UNEXECUTABLE", "UNKNOWN"]}, "PublisherQueryLanguageSyntaxError.Reason": {type: "string", enumerations: ["UNPARSABLE", "UNKNOWN"]}, "QuotaError.Reason": {type: "string", enumerations: ["EXCEEDED_QUOTA", "UNKNOWN", "REPORT_JOB_LIMIT", "SEGMENT_POPULATION_LIMIT"]}, RequestPlatform: {type: "string", enumerations: ["UNKNOWN", "BROWSER", "MOBILE_APP", "VIDEO_PLAYER"]}, "RequiredCollectionError.Reason": {type: "string", enumerations: ["REQUIRED", "TOO_LARGE", "TOO_SMALL", "UNKNOWN"]}, "RequiredError.Reason": {type: "string", enumerations: ["REQUIRED"]}, "RequiredSizeError.Reason": {type: "string", enumerations: ["REQUIRED", "NOT_ALLOWED", "UNKNOWN"]}, "ServerError.Reason": {type: "string", enumerations: ["SERVER_ERROR", "SERVER_BUSY", "UNKNOWN"]}, "StatementError.Reason": {type: "string", enumerations: ["VARIABLE_NOT_BOUND_TO_VALUE", "UNKNOWN"]}, "StringFormatError.Reason": {type: "string", enumerations: ["UNKNOWN", "ILLEGAL_CHARS", "INVALID_FORMAT"]}, "StringLengthError.Reason": {type: "string", enumerations: ["TOO_LONG", "TOO_SHORT", "UNKNOWN"]}, "TeamError.Reason": {type: "string", enumerations: ["ENTITY_NOT_ON_USERS_TEAMS", "AD_UNITS_NOT_ON_ORDER_TEAMS", "PLACEMENTS_NOT_ON_ORDER_TEAMS", "MISSING_USERS_TEAM", "ALL_TEAM_ASSOCIATION_NOT_ALLOWED", "INVALID_TEAM_ASSIGNMENT", "CANNOT_UPDATE_INACTIVE_TEAM", "UNKNOWN"]}, VideoBumperType: {type: "string", enumerations: ["BEFORE", "AFTER"]}, "VideoPosition.Type": {type: "string", enumerations: ["UNKNOWN", "ALL", "PREROLL", "MIDROLL", "POSTROLL"]}}
    NATIVESTYLESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return NATIVESTYLESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return NATIVESTYLESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return NATIVESTYLESERVICE_NAMESPACES[index]
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
      super(exception_fault, NativeStyleServiceRegistry)
    end
  end
end; end; end
