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
# This code example shows how to upload offline data for store sales
# transactions.

require 'adwords_api'
require 'digest'
require 'date'

def upload_offline_data(conversion_name, external_upload_id,
    store_sales_upload_common_metadata_type, email_addresses,
    advertiser_upload_time, bridge_map_version_id, partner_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  unless email_addresses.size == 2
    raise ArgumentError, ('%d email addresses specified. Please specify ' +
        'exactly 2 email addresses.') % email_addresses.size
  end

  # Set partial failure to true since this example demonstrates how to handle
  # partial failure errors.
  adwords.partial_failure = true
  offline_data_upload_srv = adwords.service(
      :OfflineDataUploadService, API_VERSION)

  offline_data_list = []

  # Create the first offline data for upload.
  # This transaction occurred 7 days ago with amount of 200 USD.
  transaction_time_1 = DateTime.parse((Date.today - 7).to_s)
  transaction_amount_1 = 200_000_000
  user_identifiers_1 = [
    create_user_identifier('HASHED_EMAIL', email_addresses[0]),
    create_user_identifier('STATE', 'New York')
  ]

  offline_data_list << create_offline_data(transaction_time_1,
      transaction_amount_1, 'USD', conversion_name, user_identifiers_1)

  # Create the second offline data for upload.
  # This transaction occurred 14 days ago with amount of 450 EUR.
  transaction_time_2 = DateTime.parse((Date.today - 14).to_s)
  transaction_amount_2 = 450_000_000
  user_identifiers_2 = [
    create_user_identifier('HASHED_EMAIL', email_addresses[1]),
    create_user_identifier('STATE', 'California')
  ]

  offline_data_list << create_offline_data(transaction_time_2,
      transaction_amount_2, 'EUR', conversion_name, user_identifiers_2)

  # Set the type and metadata of this upload.
  upload_metadata = {
    :xsi_type => store_sales_upload_common_metadata_type,
    :loyalty_rate => 1.0,
    :transaction_upload_rate => 1.0
  }

  upload_type = 'STORE_SALES_UPLOAD_FIRST_PARTY'
  if store_sales_upload_common_metadata_type == METADATA_TYPE_3P
    upload_type = 'STORE_SALES_UPLOAD_THIRD_PARTY'
    upload_metadata[:advertiser_upload_time] = advertiser_upload_time
    upload_metadata[:valid_transaction_rate] = 1.0
    upload_metadata[:partner_match_rate] = 1.0
    upload_metadata[:partner_upload_rate] = 1.0
    upload_metadata[:bridge_map_version_id] = bridge_map_version_id
    upload_metadata[:partner_id] = partner_id
  end

  # Create offline data upload object.
  offline_data_upload = {
    :external_upload_id => external_upload_id,
    :offline_data_list => offline_data_list,
    :upload_type => upload_type,
    :upload_metadata => upload_metadata
  }

  # Create an offline data upload operation.
  data_upload_operation = {
    :operator => 'ADD',
    :operand => offline_data_upload
  }

  # Upload offline data on the server and print some information.
  operations = [data_upload_operation]
  return_value = offline_data_upload_srv.mutate(operations)
  offline_data_upload = return_value[:value].first
  puts ('Uploaded offline data with external upload ID %d, and upload ' +
      'status %s') % [offline_data_upload[:external_upload_id],
      offline_data_upload[:upload_status]]

  # Print any partial data errors from the response.
  unless return_value[:partial_failure_errors].nil?
    return_value[:partial_failure_errors].each do |api_error|
      # Get the index of the failed operation from the error's field path
      # elements.
      operation_index = get_field_path_element_index(api_error, 'operations')
      unless operation_index.nil?
        failed_offline_data_upload = operations[operation_index][:operand]
        # Get the index of the entry in the offline data list from the error's
        # field path elements.
        offline_data_list_index = get_field_path_element_index(api_error,
            'offlineDataList')
        puts ("Offline data list entry %d in operation %d with external " +
            "upload ID %d and type '%s' has triggered failure for the " +
            " following reason: '%s'") %
            [offline_data_list_index, operation_index,
            failed_offline_data_upload[:external_upload_id],
            failed_offline_data_upload[:upload_type], api_error[:error_string]]
      else
        puts "A failure has occurred for the following reason: '%s'" %
            apiError[:error_string]
      end
    end
  end
end

def get_field_path_element_index(api_error, field)
  field_path_elements = api_error[:field_path_elements]
  return nil if field_path_elements.nil?
  field_path_elements.each_with_index do |field_path_element, i|
    if field == field_path_element[:field]
      return field_path_element[:index]
    end
  end
  return nil
end

def create_offline_data(transaction_time, transaction_micro_amount,
    transaction_currency, conversion_name, user_identifiers)
  store_sales_transaction = {
    :xsi_type => 'StoreSalesTransaction',
    # For times, use the format yyyyMMdd HHmmss [tz].
    # For details, see
    # https://developers.google.com/adwords/api/docs/appendix/codes-formats#date-and-time-formats
    :transaction_time => transaction_time.strftime('%Y%m%d %H%M%S'),
    :conversion_name => conversion_name,
    :user_identifiers => user_identifiers,
    :transaction_amount => {
      :money => {
        :micro_amount => transaction_micro_amount
      },
      :currency_code => transaction_currency
    }
  }
  return store_sales_transaction
end

def create_user_identifier(identifier_type, value)
  # If the user identifier type is a hashed type, also call the hash function
  # on the value.
  if HASHED_IDENTIFIER_TYPES.include?(identifier_type)
    value = hash_string(value)
  end
  user_identifier = {
    :user_identifier_type => identifier_type,
    :value => value
  }
  return user_identifier
end

def hash_string(text)
  sha_digest = Digest::SHA256.new
  sha_digest.hexdigest(normalize_text(text))
end

def normalize_text(text)
  text.strip.downcase
end

if __FILE__ == $0
  API_VERSION = :v201809

  HASHED_IDENTIFIER_TYPES = [
    'HASHED_EMAIL',
    'HASHED_FIRST_NAME',
    'HASHED_LAST_NAME',
    'HASHED_PHONE'
  ]

  # Store sales upload common metadata types
  METADATA_TYPE_1P = 'FirstPartyUploadMetadata'
  METADATA_TYPE_3P = 'ThirdPartyUploadMetadata'

  begin
    conversion_name = 'INSERT_CONVERSION_NAME_HERE'
    external_upload_id = 'INSERT_EXTERNAL_UPLOAD_ID_HERE'.to_i
    email_addresses = ['INSERT_EMAIL_ADDRESS_HERE', 'INSERT_EMAIL_ADDRESS_HERE']

    # Set the below constant to METADATA_TYPE_3P if uploading third-party data.
    store_sales_upload_common_metadata_type = METADATA_TYPE_1P

    # The three constants below are needed when uploading third-party data. They
    # are not used when uploading first-party data.
    # Advertiser upload time to partner.
    # For times, use the format yyyyMMdd HHmmss tz. For more details on formats,
    # see:
    # https://developers.google.com/adwords/api/docs/appendix/codes-formats#timezone-ids
    advertiser_upload_time = 'INSERT_ADVERTISER_UPLOAD_TIME_HERE'
    bridge_map_version_id = 'INSERT_BRIDGE_MAP_VERSION_ID_HERE'
    partner_id = 'INSERT_PARTNER_ID_HERE'.to_i

    upload_offline_data(conversion_name, external_upload_id,
        store_sales_upload_common_metadata_type, email_addresses,
        advertiser_upload_time, bridge_map_version_id, partner_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2'

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
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
