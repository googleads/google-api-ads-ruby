#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# This example creates a new native creative for a given advertiser. To
# determine which companies are advertisers, run get_companies_by_statement.rb.
# To determine which creatives already exist, run get_all_creatives.rb.
#
# The code in this example will use app data from the Google sample app
# 'Pie Noon':
#
# https://play.google.com/store/apps/details?id=com.google.fpl.pie_noon&hl=en

require 'base64'
require 'securerandom'
require 'ad_manager_api'

def create_native_creative(ad_manager, advertiser_id)
  # Get the CreativeService.
  creative_service = ad_manager.service(:CreativeService, API_VERSION)

  # Set the URLs of the application screenshot and the small application icon to
  # use and convert them to byte array strings.
  screenshot_url = 'https://lh4.ggpht.com/GIGNKdGHMEHFDw6TM2bgAUDKPQQRIReKZPq' +
      'EpMeEhZOPYnTdOQGaSpGSEZflIFs0iw=h300'
  screenshot_data = AdsCommon::Http.get(screenshot_url, ad_manager.config)
  screenshot_data_base64 = Base64.encode64(screenshot_data)

  app_icon = 'https://lh6.ggpht.com/Jzvjne5CLs6fJ1MHF-XeuUfpABzl0YNMlp4' +
      'RpHnvPRCIj4--eTDwtyouwUDzVVekXw=w300')
  app_icon_data = AdsCommon::Http.get(app_icon, ad_manager.config)
  app_icon_data_base64 = Base64.encode64(app_icon_data)

  # Use the native creative template.
  creative_template_id = 10004400

  # Create the local custom creative object.
  creative = {
      :xsi_type => 'TemplateCreative',
      :name => 'Native creative - %s' % SecureRandom.uuid(),
      :advertiser_id => advertiser_id,
      :creative_template_id => creative_template_id,
      :size => {:width => 1, :height => 1, :is_aspect_ratio => false},
      :destination_url => 'https://play.google.com/store/apps/details?id=' +
          'com.google.fpl.pie_noon'
  }

  # Create the Image asset variable value.
  image_variable_value = {
      :xsi_type => 'AssetCreativeTemplateVariableValue',
      :unique_name => 'Image',
      :asset => {
          :asset_byte_array => screenshot_data_base64,
          # Filenames must be unique.
          :file_name => 'image_%s.png' % SecureRandom.uuid()
      }
  }

  # Create the Appicon asset variable value.
  appicon_variable_value = {
      :xsi_type => 'AssetCreativeTemplateVariableValue',
      :unique_name => 'Appicon',
      :asset => {
          :asset_byte_array => app_icon_data_base64,
          # Filenames must be unique.
          :file_name => 'image_%s.png' % SecureRandom.uuid()
      }
  }

  # Create the Price variable value.
  price_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Price',
      :value => 'Free'
  }

  # Create the Calltoaction variable value.
  calltoaction_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Calltoaction',
      :value => 'Install'
  }

  # Create the Starrating variable value.
  starrating_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Starrating',
      :value => '4'
  }

  # Create the Store variable value.
  store_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Store',
      :value => 'Google Play'
  }

  # Create the Headline variable value.
  headline_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Headline',
      :value => 'Pie Noon'
  }

  # Create the Body variable value.
  body_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Body',
      :value => 'Try multi-screen mode!'
  }

  # Create the DeeplinkclickactionURL variable value.
  deeplinkurl_variable_value = {
      :xsi_type => 'UrlCreativeTemplateVariableValue',
      :unique_name => 'DeeplinkclickactionURL',
      :value => 'market://details?id=com.google.fpl.pie_noon'
  }

  creative[:creative_template_variable_values] = [
      deeplinkurl_variable_value,
      body_variable_value,
      headline_variable_value,
      store_variable_value,
      starrating_variable_value,
      calltoaction_variable_value,
      price_variable_value,
      appicon_variable_value,
      image_variable_value
  ]

  # Create the creatives on the server.
  created_creatives = creative_service.create_creatives([creative])

  if created_creatives.to_a.size > 0
    created_creatives.each do |creative|
      puts ('Native creative with ID %d and name "%s" was created and can be ' +
          'previewed at "%s".') % [creative[:id], creative[:name],
          creative[:preview_url]]
    end
  else
    puts 'No creatives were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201811

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i
    create_native_creative(ad_manager, advertiser_id)

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
