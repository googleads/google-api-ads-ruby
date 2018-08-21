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
# This example gets all products created from a product template.

require 'ad_manager_api'

def get_products_for_product_template(ad_manager, product_template_id)
  # Get the ProductService.
  product_service = ad_manager.service(:ProductService, API_VERSION)

  # Create a statement to select products.
  statement = ad_manager.new_statement_builder do |sb|
    sb.where = 'productTemplateId = :product_template_id'
    sb.with_bind_variable('product_template_id', product_template_id)
  end

  # Retrieve a small number of products at a time, paging through until all
  # products have been retrieved.
  page = {:total_result_set_size => 0};
  begin
    # Get products by statement.
    page = product_service.get_products_by_statement(
        statement.to_statement()
    )

    # Display some information about each product.
    unless page[:results].nil?
      page[:results].each_with_index do |product, index|
        puts '%d) Product with ID %d and name "%s" was found.' %
            [index + statement.offset, product[:id], product[:name]]
      end
    end
    statement.offset += statement.limit
  end while statement.offset < page[:total_result_set_size]

  puts 'Total number of products: %d' % page[:total_result_set_size]
end

if __FILE__ == $0
  API_VERSION = :v201808

  # Get AdManagerApi instance and load configuration from ~/ad_manager_api.yml.
  ad_manager = AdManagerApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # ad_manager.logger = Logger.new('ad_manager_xml.log')

  begin
    product_template_id = 'INSERT_PRODUCT_TEMPLATE_ID_HERE'.to_i
    get_products_for_product_template(ad_manager, product_template_id)

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
