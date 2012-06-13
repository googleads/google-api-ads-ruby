# See this document for reference:
#   https://developers.google.com/adwords/api/docs/appendix/reports

class ReportController < ApplicationController

  REPORT_DEFINITION_TEMPLATE = {
    :selector => {
      :fields => []
    },
    :report_name => 'AdWords on Rails report',
    :report_type => nil,
    :download_format => nil,
    :date_range_type => 'LAST_7_DAYS',
    :include_zero_impressions => false
  }

  def index
    @selected_account = selected_account
    @reports = Report.reports()
    @formats = ReportFormat.report_formats()
  end

  def get
    @selected_account = selected_account
    return if @selected_account.nil?

    validate_data(params)

    api = get_adwords_api()
    report_utils = api.report_utils()
    definition = Report.create_definition(REPORT_DEFINITION_TEMPLATE, params)
    begin
      # Here we only expect reports that fit into memory. For large reports
      # you may want to save them to files and serve separately.
      report_data = report_utils.download_report(definition)
      format = ReportFormat.report_format_for_type(params[:format])
      content_type = format.content_type
      filename = format.file_name(params[:type])
      send_data(report_data, {:filename => filename, :type => content_type})
    rescue AdwordsApi::Errors::ReportError => e
      @error = e.message
    end
  end

  private

  def validate_data(data)
    format = ReportFormat.report_format_for_type(data[:format])
    raise StandardError, 'Unknown format' if format.nil?
    report = Report.report_for_type(data[:type])
    raise StandardError, 'Unknown report type' if report.nil?
  end
end
