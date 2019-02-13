#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example creates a new template creative for a given advertiser. To
# determine which companies are advertisers, run get_companies_by_statement.rb.
# To determine which creatives already exist, run get_all_creatives.rb. To
# determine which creative templates exist, run get_all_creative_templates.rb.

require 'base64'
require 'securerandom'
require 'ad_manager_api'

def create_creative_from_template(ad_manager, advertiser_id,
    creative_template_id)
  # Get the CreativeService.
  creative_service = ad_manager.service(:CreativeService, API_VERSION)

  # Create the local custom creative object.
  creative = {
      :xsi_type => 'TemplateCreative',
      :name => 'Template creative',
      :advertiser_id => advertiser_id,
      :creative_template_id => creative_template_id,
      :size => {:width => 300, :height => 250, :is_aspect_ratio => false}
  }

  # Prepare image data for asset value.
  image_url =
      'http://www.google.com/intl/en/adwords/select/images/samples/inline.jpg'
  image_data = AdsCommon::Http.get(image_url, ad_manager.config)
  image_data_base64 = Base64.encode64(image_data)

  # Create the asset variable value.
  asset_variable_value = {
      :xsi_type => 'AssetCreativeTemplateVariableValue',
      :unique_name => 'Imagefile',
      :asset => {
        :asset_byte_array => image_data_base64,
        # Filenames must be unique.
        :file_name => 'image_%s.jpg' % SecureRandom.uuid()
      }
  }

  # Create the image width variable value.
  image_width_variable_value = {
      :xsi_type => 'LongCreativeTemplateVariableValue',
      :unique_name => 'Imagewidth',
      :value => 300
  }

  # Create the image height variable value.
  image_height_variable_value = {
      :xsi_type => 'LongCreativeTemplateVariableValue',
      :unique_name => 'Imageheight',
      :value => 250
  }

  # Create the URL variable value.
  url_variable_value = {
      :xsi_type => 'UrlCreativeTemplateVariableValue',
      :unique_name => 'ClickthroughURL',
      :value => 'www.google.com'
  }

  # Create the target window variable value.
  target_window_variable_value = {
      :xsi_type => 'StringCreativeTemplateVariableValue',
      :unique_name => 'Targetwindow',
      :value => '_blank'
  }

  creative[:creative_template_variable_values] = [asset_variable_value,
      image_width_variable_value, image_height_variable_value,
      url_variable_value, target_window_variable_value]

  # Create the creatives on the server.
  created_creatives = creative_service.create_creatives([creative])

  if created_creatives.to_a_size > 0
    created_creatives.each do |creative|
      puts ('Template creative with ID %d, name "%s" and type "%s" was ' +
          'created and can be previewed at "%s"') % [creative[:id],
          creative[:name], creative[:creative_type], creative[:preview_url]]
    end
  else
    puts 'No creatives were created.'
  end
end

if __FILE__ == $0
  API_VERSION = :v201902

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    advertiser_id = 'INSERT_ADVERTISER_COMPANY_ID_HERE'.to_i
    # Use the image banner with optional third party tracking template.
    creative_template_id = 10000680
    create_creative_from_template(
        ad_manager, advertiser_id, creative_template_id
    )

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
