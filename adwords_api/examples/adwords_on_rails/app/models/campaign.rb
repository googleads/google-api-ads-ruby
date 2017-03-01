class Campaign
  attr_reader :id
  attr_reader :name
  attr_reader :status

  def initialize(api_campaign)
    @id = api_campaign[:id]
    @name = api_campaign[:name]
    @status = api_campaign[:status]
  end

  def self.get_campaigns_list(response)
    result = {}
    if response[:entries]
      response[:entries].each do |api_campaign|
        campaign = Campaign.new(api_campaign)
        result[campaign.id] = campaign
      end
    end
    return result
  end
end
