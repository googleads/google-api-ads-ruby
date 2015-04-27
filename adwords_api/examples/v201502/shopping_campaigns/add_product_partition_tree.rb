#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.mcloonan@gmail.com (Michael Cloonan)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# This example creates a ProductPartition tree.

require 'adwords_api'

class ProductPartitionHelper
  attr_reader :operations

  def initialize(ad_group_id)
    # The next temporary criterion ID to be used.
    #
    # When creating our tree we need to specify the parent-child relationships
    # between nodes. However, until a criterion has been created on the server
    # we do not have a criterionId with which to refer to it.
    #
    # Instead we can specify temporary IDs that are specific to a single mutate
    # request. Once the criteria have been created they are assigned an ID as
    # normal and the temporary ID will no longer refer to it.
    #
    # A valid temporary ID is any negative integer.
    @next_id = -1

    # The set of mutate operations needed to create the current tree.
    @operations = []

    # The ID of the AdGroup that we wish to attach the partition tree to.
    @ad_group_id = ad_group_id
  end

  def create_subdivision(parent = nil, value = nil)
    division = {
      :xsi_type => 'ProductPartition',
      :partition_type => 'SUBDIVISION',
      :id => @next_id
    }

    @next_id -= 1

    unless parent.nil? || value.nil?
      division[:parent_criterion_id] = parent[:id]
      division[:case_value] = value
    end

    ad_group_criterion = {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => @ad_group_id,
      :criterion => division
    }

    create_add_operation(ad_group_criterion)

    return division
  end

  def create_unit(parent = nil, value = nil, bid_amount = nil)
    unit = {
      :xsi_type => 'ProductPartition',
      :partition_type => 'UNIT'
    }

    unless parent.nil? || value.nil?
      unit[:parent_criterion_id] = parent[:id]
      unit[:case_value] = value
    end

    ad_group_criterion = {}
    if bid_amount && bid_amount > 0
      bidding_strategy_configuration = {
        :bids => [{
          :xsi_type => 'CpcBid',
          :bid => {
            :xsi_type => 'Money',
            :micro_amount => bid_amount
          }
        }]
      }
      ad_group_criterion[:xsi_type] = 'BiddableAdGroupCriterion'
      ad_group_criterion[:bidding_strategy_configuration] =
          bidding_strategy_configuration
    else
      ad_group_criterion[:xsi_type] = 'NegativeAdGroupCriterion'
    end
    ad_group_criterion[:ad_group_id] = @ad_group_id
    ad_group_criterion[:criterion] = unit

    create_add_operation(ad_group_criterion)

    return unit
  end

  private

  def create_add_operation(ad_group_criterion)
    operation = {
      :operator => 'ADD',
      :operand => ad_group_criterion
    }

    @operations << operation
  end
end

def display_tree(node, children, level = 0)
  value = ''
  type = ''

  if node[:case_value]
    type = node[:case_value][:product_dimension_type]

    value = case type
    when 'ProductCanonicalCondition'
      node[:case_value][:condition]
    when 'ProductBiddingCategory'
      "%s(%s)" % [node[:case_value][:type], node[:case_value][:value]]
    else
      node[:case_value][:value]
    end
  end

  puts "%sid: %s, type: %s, value: %s" %
      [' ' * level, node[:id], type, value]

  children[node[:id]].each do |child_node|
    display_tree(child_node, children, level + 1)
  end
end

def add_product_partition_tree(ad_group_id)
  # AdwordsApi::Api will read a config file from ENV['HOME']/adwords_api.yml
  # when called without parameters.
  adwords = AdwordsApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # adwords.logger = Logger.new('adwords_xml.log')

  ad_group_criterion_srv =
      adwords.service(:AdGroupCriterionService, API_VERSION)

  helper = ProductPartitionHelper.new(ad_group_id)

  root = helper.create_subdivision()

  new_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition',
    :condition => 'NEW'
  }

  used_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition',
    :condition => 'USED'
  }

  other_product_canonical_condition = {
    :xsi_type => 'ProductCanonicalCondition'
  }

  helper.create_unit(root, new_product_canonical_condition, 200000)
  helper.create_unit(root, used_product_canonical_condition, 100000)
  other_condition =
      helper.create_subdivision(root, other_product_canonical_condition)

  cool_product_brand = {
    :xsi_type => 'ProductBrand',
    :value => 'CoolBrand'
  }

  cheap_product_brand = {
    :xsi_type => 'ProductBrand',
    :value => 'CheapBrand'
  }

  other_product_brand = {
    :xsi_type => 'ProductBrand'
  }

  helper.create_unit(other_condition, cool_product_brand, 900000)
  helper.create_unit(other_condition, cheap_product_brand, 10000)
  other_brand = helper.create_subdivision(other_condition, other_product_brand)

  # The value for the bidding category is a fixed ID for the 'Luggage & Bags'
  # category. You can retrieve IDs for categories from the ConstantDataService.
  # See the get_product_taxonomy example for more details.
  luggage_category = {
    :xsi_type => 'ProductBiddingCategory',
    :type => 'BIDDING_CATEGORY_L1',
    :value => '-5914235892932915235'
  }

  generic_category = {
    :xsi_type => 'ProductBiddingCategory',
    :type => 'BIDDING_CATEGORY_L1'
  }

  helper.create_unit(other_brand, luggage_category, 750000)
  helper.create_unit(other_brand, generic_category, 110000)

  # Make the mutate request.
  result = ad_group_criterion_srv.mutate(helper.operations)

  children = {}
  root_node = nil
  # For each criterion, make an array containing each of its children.
  # We always create the parent before the child, so we can rely on that here.
  result[:value].each do |criterion|
    children[criterion[:criterion][:id]] = []

    if criterion[:criterion][:parent_criterion_id]
      children[criterion[:criterion][:parent_criterion_id]] <<
          criterion[:criterion]
    else
      root_node = criterion[:criterion]
    end
  end

  display_tree(root_node, children)
end

if __FILE__ == $0
  API_VERSION = :v201502

  begin
    ad_group_id = 'INSERT_AD_GROUP_ID_HERE'.to_i

    add_product_partition_tree(ad_group_id)

  # Authorization error.
  rescue AdsCommon::Errors::OAuth2VerificationRequired => e
    puts "Authorization credentials are not valid. Edit adwords_api.yml for " +
        "OAuth2 client ID and secret and run misc/setup_oauth2.rb example " +
        "to retrieve and store OAuth2 tokens."
    puts "See this wiki page for more details:\n\n  " +
        'http://code.google.com/p/google-api-ads-ruby/wiki/OAuth2'

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
