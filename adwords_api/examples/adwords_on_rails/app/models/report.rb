class Report

  REPORT_LIST = {
    'ACCOUNT_PERFORMANCE_REPORT' => {
      :name => 'Account Performance'
    },
    'ACCOUNT_REACH_FREQUENCY_REPORT' => {
      :name => 'Account Reach Frequency'
    },
    'ADGROUP_PERFORMANCE_REPORT' => {
      :name => 'Adgroup Performance'
    },
    'ADGROUP_REACH_FREQUENCY_REPORT' => {
      :name => 'Adgroup Reach Frequency'
    },
    'AD_EXTENSIONS_PERFORMANCE_REPORT' => {
      :name => 'Ad Extensions Performance'
    },
    'AD_PERFORMANCE_REPORT' => {
      :name => 'Ad Performance'
    },
    'AGE_RANGE_PERFORMANCE_REPORT' => {
      :name => 'Age Range Performance'
    },
    'AUDIENCE_PERFORMANCE_REPORT' => {
      :name => 'Audience Performance'
    },
    'AUTOMATIC_PLACEMENTS_PERFORMANCE_REPORT' => {
      :name => 'Automatic Placements Performance'
    },
    'BUDGET_PERFORMANCE_REPORT' => {
      :name => 'Budget Performance'
    },
    'CAMPAIGN_AD_SCHEDULE_TARGET_REPORT' => {
      :name => 'Campaign Ad Schedule Target'
    },
    'CAMPAIGN_LOCATION_TARGET_REPORT' => {
      :name => 'Campaign Location Target'
    },
    'CAMPAIGN_NEGATIVE_KEYWORDS_PERFORMANCE_REPORT' => {
      :name => 'Campaign Negative Keywords Performance'
    },
    'CAMPAIGN_NEGATIVE_LOCATIONS_REPORT' => {
      :name => 'Campaign Negative Locations'
    },
    'CAMPAIGN_NEGATIVE_PLACEMENTS_PERFORMANCE_REPORT' => {
      :name => 'Campaign Negative Placements Performance'
    },
    'CAMPAIGN_PERFORMANCE_REPORT' => {
      :name => 'Campaign Performance'
    },
    'CAMPAIGN_PLATFORM_TARGET_REPORT' => {
      :name => 'Campaign Platform Target'
    },
    'CAMPAIGN_REACH_FREQUENCY_REPORT' => {
      :name => 'Campaign Reach Frequency'
    },
    'CLICK_PERFORMANCE_REPORT' => {
      :name => 'Click Performance'
    },
    'CREATIVE_CONVERSION_REPORT' => {
      :name => 'Creative Conversion'
    },
    'CRITERIA_PERFORMANCE_REPORT' => {
      :name => 'Criteria Performance'
    },
    'DESTINATION_URL_REPORT' => {
      :name => 'Destination URL'
    },
    'DISPLAY_KEYWORD_PERFORMANCE_REPORT' => {
      :name => 'Display Keyword Performance'
    },
    'DISPLAY_TOPICS_PERFORMANCE_REPORT' => {
      :name => 'Display Topics Performance'
    },
    'GENDER_PERFORMANCE_REPORT' => {
      :name => 'Gender Performance'
    },
    'GEO_PERFORMANCE_REPORT' => {
      :name => 'Geo Performance'
    },
    'KEYWORDLESS_CATEGORY_REPORT' => {
      :name => 'Keywordless Category'
    },
    'KEYWORDLESS_QUERY_REPORT' => {
      :name => 'Keywordless Query'
    },
    'KEYWORDS_PERFORMANCE_REPORT' => {
      :name => 'Keywords Performance'
    },
    'PLACEHOLDER_FEED_ITEM_REPORT' => {
      :name => 'Placeholder Feed Item'
    },
    'PLACEMENT_PERFORMANCE_REPORT' => {
      :name => 'Placement Performance'
    },
    'SEARCH_QUERY_PERFORMANCE_REPORT' => {
      :name => 'Search Query Performance'
    },
    'URL_PERFORMANCE_REPORT' => {
      :name => 'URL Performance'
    }
  }

  attr_reader :id, :name

  def initialize(id, name)
    @id, @name = id, name
  end

  def self.report_for_type(report_type)
    return reports()[report_type]
  end

  def self.reports()
    @@reports ||= REPORT_LIST.inject({}) do |result, (key, value)|
      result[key] = Report.new(key, value[:name])
      result
    end
    return @@reports
  end

  def self.create_definition(template, data)
    result = template.dup()
    result[:selector][:fields] = string_to_array(data['fields'])
    result[:report_type] = data[:type]
    result[:download_format] = data[:format]
    result[:include_zero_impressions] = true if 'true'.eql?(data[:zeroes])
    return result
  end

  private

  def self.string_to_array(str)
    return [] if str.nil? or str.empty?
    result = str.split(',')
    return result.map {|item| item.strip}
  end
end
