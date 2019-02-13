#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Creates a native app install ad.

require 'securerandom'
require 'ad_manager_api'

def create_native_styles(ad_manager)
  # Get the NativeStyleService.
  native_style_service = ad_manager.service(:NativeStyleService, API_VERSION)

  native_style = {
    :name => 'Native style - %s' % SecureRandom.uuid(),
    :html_snippet => get_html(),
    :css_snippet => get_css(),
    # This is the creative template ID for the system-defined native app install
    # ad format, which we will create the native style from. Use
    # CreativeTemplateService.getCreativeTemplatesByStatement() and
    # CreativeTemplate.isNativeEligible to get other native ad formats
    # available in your network.
    :creative_template_id => 10004400,
    :size => {:width => 300, :height => 345, :is_aspect_ratio => false}
  }

  # Create the native styles on the server.
  results = native_style_service.create_native_styles([native_style])

  if results.to_a.size > 0
    results.each_with_index do |style, index|
      puts ('%d) Native style with ID %d, name "%s" and creative ' +
          'template ID %d was created.') % [index, style[:id], style[:name],
          style[:creative_template_id]]
    end
  else
    puts 'No native styles were created.'
  end
end

def get_html()
  return <<EOF
<div id="adunit" style="overflow: hidden;">
  <img src="[%Thirdpartyimpressiontracker%]" style="display:none">
  <div class="attribution">Ad</div>
  <div class="image">
    <a class="image-link"
        href="%%CLICK_URL_UNESC%%[%Thirdpartyclicktracker%]%%DEST_URL%%"
        target="_top">
      <img src="[%Image%]">
    </a>
  </div>
  <div class="app-icon"><img src="[%Appicon%]"/></div>
  <div class="title">
    <a class="title-link"
        href="%%CLICK_URL_UNESC%%[%Thirdpartyclicktracker%]%%DEST_URL%%"
        target="_top">[%Headline%]</a>
  </div>
  <div class="reviews"></div>
  <div class="body">
    <a class="body-link"
        href="%%CLICK_URL_UNESC%%[%Thirdpartyclicktracker%]%%DEST_URL%%"
        target="_top">[%Body%]</a>
  </div>
  <div class="price">[%Price%]</div>
  <div class="button">
    <a class="button-link"
        href="%%CLICK_URL_UNESC%%[%Thirdpartyclicktracker%]%%DEST_URL%%"
        target="_top">[%Calltoaction%]</a>
  </div>
</div>
EOF
end

def get_css()
  return <<EOF
body {
    background-color: rgba(255, 255, 255, 1);
    font-family: "Roboto-Regular", sans-serif;
    font-weight: normal;
    font-size: 12px;
    line-height: 14px;
}
.attribution {
    background-color: rgba(236, 182, 0, 1);
    color: rgba(255, 255, 255, 1);
    font-size: 13px;
    display: table;
    margin: 4px 8px;
    padding: 0 3px;
    border-radius: 2px;
}
.image {
    text-align: center;
    margin: 8px;
}
.image img,
.image-link {
    width: 100%;
}
.app-icon {
    float: left;
    margin: 0 8px 4px 8px;
    height: 40px;
    width: 40px;
    background-color: transparent;
}
.app-icon img {
    height: 100%;
    width: 100%;
    border-radius: 20%;
}
.title {
    font-weight: bold;
    font-size: 14px;
    line-height: 20px;
    margin: 8px 8px 4px 8px;
}
.title a {
    color: rgba(112, 112, 112, 1);
    text-decoration: none;
}
.reviews {
    float: left;
}
.reviews svg {
    fill: rgba(0, 0, 0, 0.7);
}
.body {
    clear: left;
    margin: 8px;
}
.body a {
    color: rgba(110, 110, 110, 1);
    text-decoration: none;
}
.price {
    display: none;
}
.button {
    font-size: 14px;
    font-weight: bold;
    float: right;
    margin: 0px 16px 16px 0px;
    white-space: nowrap;
}
.button a {
    color: #2196F3;
    text-decoration: none;
}
.button svg {
    display: none;
}
EOF
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    create_native_styles(ad_manager)

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdManagerApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
