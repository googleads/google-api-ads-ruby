#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This code example creates a new creative wrapper.
#
# Creative wrappers must be associated with a LabelType.CREATIVE_WRAPPER label
# and applied to ad units by AdUnit.appliedLabels. To determine which creative
# wrappers exist, run get_all_creative_wrappers.rb.
#
# Tags: CreativeWrapperService.createCreativeWrappers

require 'dfp_api'

API_VERSION = :v201505

def create_creative_wrappers()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CreativeWrapperService.
  creative_wrapper_service = dfp.service(:CreativeWrapperService, API_VERSION)

  # Set the creative wrapper label ID.
  label_id = 'INSERT_CREATIVE_WRAPPER_LABEL_ID_HERE'.to_i

  # Create creative wrapper objects.
  creative_wrapper = {
    # A label can only be associated with one creative wrapper.
    :label_id => label_id,
    :ordering => 'INNER',
    :header => {:html_snippet => '<b>My creative wrapper header</b>'},
    :footer => {:html_snippet => '<b>My creative wrapper footer</b>'}
  }

  # Create the creative wrapper on the server.
  return_creative_wrappers =
      creative_wrapper_service.create_creative_wrappers([creative_wrapper])

  if return_creative_wrappers
    return_creative_wrappers.each do |creative_wrapper|
      puts "Creative wrapper with ID: %d applying to label: %d was created." %
          [creative_wrapper[:id], creative_wrapper[:label_id]]
    end
  else
    raise 'No creative wrappers were created.'
  end
end

if __FILE__ == $0
  begin
    create_creative_wrappers()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
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
