#!/usr/bin/ruby
#
# Author:: api.sgomes@gmail.com (Sérgio Gomes)
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
# This example illustrates how to add a text ad, an image ad and template (Click
# to Play Video) ad to a given ad group. To create an ad group, run
# add_ad_group.rb. To get all videos, run get_all_videos.rb. To upload video,
# see http://adwords.google.com/support/aw/bin/answer.py?hl=en&answer=39454 .
#
# Tags: AdGroupAdService.mutate

require 'rubygems'
gem 'google-adwords-api'
require 'adwords_api'
require 'base64'

API_VERSION = :v201003

def add_ads()
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new
  ad_group_ad_srv = adwords.service(:AdGroupAdService, API_VERSION)

  ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i
  video_media_id = 'INSERT_VIDEO_MEDIA_ID_HERE'.to_i

  # Create text ad.
  text_ad_operation = {
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        # The 'xsi_type' field allows you to specify the xsi:type of the object
        # being created. It's only necessary when you must provide an explicit
        # type that the client library can't infer.
        :xsi_type => 'TextAd',
        :headline => 'Luxury Cruise to Mars',
        :description1 => 'Visit the Red Planet in style.',
        :description2 => 'Low-gravity fun for everyone!',
        :url => 'http://www.example.com',
        :display_url => 'www.example.com',
      }
    }
  }

  # Retrieve image and encode it.
  image_url = 'https://sandbox.google.com/sandboximages/image.jpg'
  # This utility method retrieves the contents of a URL using all of the config
  # options provided to the Api object.
  image_data = AdsCommon::Http.get(image_url, adwords.config)
  base64_image_data = Base64.encode64(image_data)

  # Create image ad.
  image_ad_operation = {
    :operator => 'ADD',
    :operand => {
      :ad_group_id => ad_group_id,
      :ad => {
        :xsi_type => 'ImageAd',
        :name => 'Cruise to mars image ad #%s' % (Time.new.to_f * 1000).to_i,
        :url => 'http://www.example.com',
        :display_url => 'www.example.com',
        :image => {
          :data => base64_image_data
        }
      }
    }
  }

  # Create template ad, using the Click to Play Video template (id 9).
  template_ad_operation = {
    :operator => 'ADD',
    :operand => {
      :adGroupId => ad_group_id,
      :ad => {
        :xsi_type => 'TemplateAd',
        :template_id => 9,
        :dimensions => {
          :width => 300,
          :height => 250
        },
        :name => 'Mars cruise video ad #%s' % (Time.new.to_f * 1000).to_i,
        :display_url => 'www.example.com',
        :url => 'http://www.example.com',
        :template_elements => [{
          :unique_name => 'adData',
          :fields => [
            {
              :name => 'startImage',
              :type => 'IMAGE',
              :field_media => {
                :xsi_type => 'Image',
                :type => 'IMAGE',
                :name => 'StartingImage',
                :data => base64_image_data  # Reusing the same image data
              }
            },
            {
              :name => 'displayUrlColor',
              :type => 'ENUM',
              :field_text => '#ffffff'
            },
            {
              :name => 'video',
              :type => 'VIDEO',
              :field_media => {
                :xsi_type => 'Video',
                :type => 'VIDEO',
                :name => 'video',
                :media_id => video_media_id
              }
            }
          ]
        }]
      }
    }
  }

  # Add ads.
  response = ad_group_ad_srv.mutate([text_ad_operation, image_ad_operation,
    template_ad_operation])
  if response and response[:value]
    ads = response[:value]
    puts "Added #{ads.length} ad(s) to ad group #{ad_group_id}."
    ads.each do |ad|
      puts "  Ad id is #{ad[:ad][:id]}, type is #{ad[:ad][:xsi_type]} and " +
          "status is \"#{ad[:status]}\"."
    end
  else
    puts "No ads were added."
  end
end

if __FILE__ == $0
  # To enable logging of SOAP requests, set the ADWORDSAPI_DEBUG environment
  # variable to 'true'. This can be done either from your operating system
  # environment or via code, as done below.
  ENV['ADWORDSAPI_DEBUG'] = 'false'

  begin
    add_ads()

  # Connection error. Likely transitory.
  rescue Errno::ECONNRESET, SOAP::HTTPStreamError, SocketError => e
    puts 'Connection Error: %s' % e
    puts 'Source: %s' % e.backtrace.first

  # API Error.
  rescue AdwordsApi::Errors::ApiException => e
    puts 'API Exception caught.'
    puts 'Message: %s' % e.message
    puts 'Code: %d' % e.code if e.code
    puts 'Trigger: %s' % e.trigger if e.trigger
    puts 'Errors:'
    if e.errors
      e.errors.each_with_index do |error, index|
        puts ' %d. Error type is %s. Fields:' % [index + 1, error[:xsi_type]]
        error.each_pair do |field, value|
          if field != :xsi_type
            puts '     %s: %s' % [field, value]
          end
        end
      end
    end
  end
end
