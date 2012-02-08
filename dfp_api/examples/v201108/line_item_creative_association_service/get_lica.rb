#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
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
# This example gets a line item creative association (LICA) by the line item and
# creative ID. To determine which line items exist, run get_all_line_items.rb.
# To determine which creatives exit, run get_all_creatives.rb.
#
# Tags: LineItemCreativeAssociationService.getLineItemCreativeAssociation

require 'dfp_api'

API_VERSION = :v201108

def get_lica()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the LineItemCreativeAssociationService.
  lica_service = dfp.service(:LineItemCreativeAssociationService, API_VERSION)

  # Set the line item and creative IDs to use to retrieve the LICA.
  line_item_id = 'INSERT_LINE_ITEM_ID_HERE'.to_i
  creative_id = 'INSERT_CREATIVE_ID_HERE'.to_i

  # Get the LICA.
  lica =
      lica_service.get_line_item_creative_association(line_item_id, creative_id)

  if lica
    puts ("LICA with line item ID: %d, creative ID: %d and status: %s was " +
        "found.") % [lica[:line_item_id], lica[:creative_id], lica[:status]]
  else
    puts 'No lica found for this ID.'
  end
end

if __FILE__ == $0
  begin
    get_lica()

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
