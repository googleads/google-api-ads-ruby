class ReportFormat

  REPORT_FORMATS = {
    'CSV' => {:name => 'CSV', :content_type => 'text/csv', :postfix => '.csv'},
    'XML' => {:name => 'XML', :content_type => 'text/xml', :postfix => '.xml'},
    'GZIPPED_CSV' => {
        :name => 'Gzipped CSV',
        :content_type => 'application/x-gzip',
        :postfix => '.csv.gz'
    },
    'GZIPPED_XML' => {
        :name => 'Gzipped XML',
        :content_type => 'application/x-gzip',
        :postfix => '.xml.gz'
    }
  }

  attr_reader :id, :name, :content_type, :postfix

  def initialize(id, name, content_type, postfix)
    @id, @name, @content_type, @postfix = id, name, content_type, postfix
  end

  def self.report_format_for_type(format_type)
    return get_report_formats()[format_type]
  end

  def self.report_formats()
    return get_report_formats()
  end

  def file_name(report_type)
    report = Report.report_for_type(report_type)
    return [report.name, ' Report', @postfix].join()
  end

  private

  def self.get_report_formats()
    @@report_formats ||= REPORT_FORMATS.inject({}) do |result, (key, value)|
      result[key] = ReportFormat.new(key, value[:name],
                                     value[:content_type], value[:postfix])
      result
    end
    return @@report_formats
  end
end
