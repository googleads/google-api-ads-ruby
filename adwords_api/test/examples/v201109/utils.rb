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
# Utilities and constants for example tests.

API_VERSION = :v201109
PAGE_SIZE = 500

class UtilsV201109
  def initialize(adwords)
    @adwords = adwords
  end

  def get_campaign
    @campaign ||= create_campaign()
    return @campaign
  end

  def get_ad_group
    @ad_group ||= create_ad_group()
    return @ad_group
  end

  def get_ad
    @ad ||= create_ad(get_ad_group()[:id])
    return @ad
  end

  def get_keyword
    @keyword ||= create_keyword(get_ad_group()[:id])
    return @keyword
  end

  def get_location_extension
    @location_extension ||= create_location_extension(get_campaign()[:id])
    return @location_extension
  end

  def get_experiment
    @experiment ||= create_experiment(
        get_campaign()[:id], get_ad_group()[:id], get_keyword[:criterion][:id])
    return @experiment
  end

  private

  def create_campaign
    campaign_srv = @adwords.service(:CampaignService, API_VERSION)
    campaign = {
      :name => "Example tests campaign #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'PAUSED',
      :bidding_strategy => {:xsi_type => 'ManualCPC'},
      :budget => {
        :period => 'DAILY',
        :amount => {:micro_amount => 50000000},
        :delivery_method => 'STANDARD'
      },
      :network_setting => {
        :target_google_search => true,
        :target_search_network => true,
        :target_content_network => false,
        :target_content_contextual => false
      }
    }
    operation = {:operator => 'ADD', :operand => campaign}
    response = campaign_srv.mutate([operation])
    return response[:value].first
  end

  def create_ad_group
    campaign = get_campaign()
    ad_group_srv = @adwords.service(:AdGroupService, API_VERSION)
    ad_group = {
      :name => "Example tests ad group #%d" % (Time.new.to_f * 1000).to_i,
      :status => 'ENABLED',
      :campaign_id => campaign[:id],
      :bids => {
        :xsi_type => 'ManualCPCAdGroupBids',
        :keyword_max_cpc => {:amount => {:micro_amount => 10000000}},
      }
    }
    operation = {:operator => 'ADD', :operand => ad_group}
    response = ad_group_srv.mutate([operation])
    return response[:value].first
  end

  def create_ad(ad_group_id)
    ad_group_ad_srv = @adwords.service(:AdGroupAdService, API_VERSION)
    text_ad = {
      :xsi_type => 'TextAd',
      :headline => 'Examples test ad %d' % (Time.new.to_f * 1000).to_i,
      :description1 => 'testing ruby examples',
      :description2 => 'all your base are belong to us',
      :url => 'http://www.example.com',
      :display_url => 'www.example.com'
    }
    operation = {:operator => 'ADD',
                 :operand => {:ad_group_id => ad_group_id, :ad => text_ad}}
    response = ad_group_ad_srv.mutate([operation])
    return response[:value].first
  end

  def create_keyword(ad_group_id)
    ad_group_criterion_srv =
        @adwords.service(:AdGroupCriterionService, API_VERSION)
    keyword = {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {
        :xsi_type => 'Keyword',
        :text => 'mars cruise',
        :match_type => 'BROAD'
      }
    }
    operation = {:operator => 'ADD', :operand => keyword}
    response = ad_group_criterion_srv.mutate([operation])
    return response[:value].first
  end

  def create_location_extension(campaign_id)
    campaign_ad_ext_srv =
        @adwords.service(:CampaignAdExtensionService, API_VERSION)
    geo_location_srv = @adwords.service(:GeoLocationService, API_VERSION)

    selector = {
      :addresses => [
        {
          :street_address => '1600 Amphitheatre Parkway',
          :city_name => 'Mountain View',
          :province_code => 'CA',
          :postal_code => '94043',
          :country_code => 'US'
        }
      ]
    }

    locations = geo_location_srv.get(selector)
    raise StandardError, 'Unable to retrieve geo locations.' if locations.nil?

    operations = locations.map do |location|
      {
        :operator => 'ADD',
        :operand => {
          :campaign_id => campaign_id,
          :status => 'ACTIVE',
          :ad_extension => {
            :xsi_type => 'LocationExtension',
            :address => location[:address],
            :geo_point => location[:geo_point],
            :encoded_location => location[:encoded_location],
            :source => 'ADWORDS_FRONTEND'
          }
        }
      }
    end

    response = campaign_ad_ext_srv.mutate(operations)
    extension = response[:value].first
    return extension
  end

  def create_experiment(campaign_id, ad_group_id, criterion_id)
    experiment_srv = @adwords.service(:ExperimentService, API_VERSION)
    ad_group_srv = @adwords.service(:AdGroupService, API_VERSION)
    ad_group_criterion_srv =
        @adwords.service(:AdGroupCriterionService, API_VERSION)

    operation = {
      :operator => 'ADD',
      :operand => {
        :campaign_id => campaign_id,
        :name => "Examples test experiment #%d" % (Time.new.to_f * 1000).to_i,
        :query_percentage => 10,
        :start_date_time => Time.now.strftime('%Y%m%d %H%M%S'),
      }
    }
    response = experiment_srv.mutate([operation])
    experiment = response[:value].first

    raise StandardError, 'Failed to create experiment' if experiment.nil?

    ad_group = {
      :id => ad_group_id,
      :experiment_data => {
        :experiment_id => experiment[:id],
        :experiment_delta_status => 'MODIFIED',
        :experiment_bid_multipliers => {
          :xsi_type => 'ManualCPCAdGroupExperimentBidMultipliers',
          :max_cpc_multiplier => {:multiplier => 1.5}
        }
      }
    }

    operation = {:operator => 'SET', :operand => ad_group}
    response = ad_group_srv.mutate([operation])
    ad_group = response[:value].first

    raise StandardError, 'Failed to assign experiment' if ad_group.nil?

    ad_group_criterion = {
      :xsi_type => 'BiddableAdGroupCriterion',
      :ad_group_id => ad_group_id,
      :criterion => {:id => criterion_id},
      :experiment_data => {
        :xsi_type => 'BiddableAdGroupCriterionExperimentData',
        :experiment_id => experiment[:id],
        :experiment_delta_status => 'MODIFIED',
        :experiment_bid_multiplier => {
          :xsi_type => 'ManualCPCAdGroupCriterionExperimentBidMultiplier',
          :max_cpc_multiplier => {:multiplier => 1.5}
        }
      }
    }

    operation = {:operator => 'SET', :operand => ad_group_criterion}
    response = ad_group_criterion_srv.mutate([operation])
    criterion = response[:value].first

    raise StandardError, 'Failed to assign criterion' if criterion.nil?

    return experiment
  end
end
