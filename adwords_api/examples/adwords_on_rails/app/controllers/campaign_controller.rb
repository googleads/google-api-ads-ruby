class CampaignController < ApplicationController

  PAGE_SIZE = 50

  def index()
    @selected_account = selected_account

    if @selected_account
      response = request_campaigns_list()
      if response
        @campaigns = Campaign.get_campaigns_list(response)
        @campaign_count = response[:total_num_entries]
      end
    end
  end

  private

  def request_campaigns_list()
    api = get_adwords_api()
    service = api.service(:CampaignService, get_api_version())
    selector = {
      :fields => ['Id', 'Name', 'Status'],
      :ordering => [{:field => 'Id', :sort_order => 'ASCENDING'}],
      :paging => {:start_index => 0, :number_results => PAGE_SIZE}
    }
    result = nil
    begin
      result = service.get(selector)
    rescue AdwordsApi::Errors::ApiException => e
      logger.fatal("Exception occurred: %s\n%s" % [e.to_s, e.message])
      flash.now[:alert] =
          'API request failed with an error, see logs for details'
    end
    return result
  end
end
