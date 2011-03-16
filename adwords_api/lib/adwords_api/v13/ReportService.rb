require 'xsd/qname'

module AdwordsApi; module V13; module ReportService


# ApiError
# - code - SOAP::SOAPInt
# - detail - SOAP::SOAPString
# - field - SOAP::SOAPString
# - index - SOAP::SOAPInt
# - isExemptable - SOAP::SOAPBoolean
# - textIndex - SOAP::SOAPInt
# - textLength - SOAP::SOAPInt
# - trigger - SOAP::SOAPString
class ApiError
  attr_accessor :code
  attr_accessor :detail
  attr_accessor :field
  attr_accessor :index
  attr_accessor :isExemptable
  attr_accessor :textIndex
  attr_accessor :textLength
  attr_accessor :trigger

  def initialize(code = nil, detail = nil, field = nil, index = nil, isExemptable = nil, textIndex = nil, textLength = nil, trigger = nil)
    @code = code
    @detail = detail
    @field = field
    @index = index
    @isExemptable = isExemptable
    @textIndex = textIndex
    @textLength = textLength
    @trigger = trigger
  end
end

# ApiException
# - code - SOAP::SOAPInt
# - errors - AdwordsApi::V13::ReportService::ApiError
# - internal - SOAP::SOAPBoolean
# - message - SOAP::SOAPString
# - trigger - SOAP::SOAPString
class ApiException
  attr_accessor :code
  attr_accessor :errors
  attr_accessor :internal
  attr_accessor :message
  attr_accessor :trigger

  def initialize(code = nil, errors = [], internal = nil, message = nil, trigger = nil)
    @code = code
    @errors = errors
    @internal = internal
    @message = message
    @trigger = trigger
  end
end

# ReportJob
# abstract
# - clientEmails - SOAP::SOAPString
# - crossClient - SOAP::SOAPBoolean
# - endDay - SOAP::SOAPDate
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - startDay - SOAP::SOAPDate
# - status - AdwordsApi::V13::ReportService::ReportJobStatus
class ReportJob
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status

  def initialize(clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil)
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
  end
end

# DefinedReportJob
# - clientEmails - SOAP::SOAPString
# - crossClient - SOAP::SOAPBoolean
# - endDay - SOAP::SOAPDate
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - startDay - SOAP::SOAPDate
# - status - AdwordsApi::V13::ReportService::ReportJobStatus
# - adGroupStatuses - AdwordsApi::V13::ReportService::AdGroupStatus
# - adGroups - SOAP::SOAPLong
# - adWordsType - AdwordsApi::V13::ReportService::AdWordsType
# - aggregationTypes - SOAP::SOAPString
# - campaignStatuses - AdwordsApi::V13::ReportService::CampaignStatus
# - campaigns - SOAP::SOAPInt
# - includeZeroImpression - SOAP::SOAPBoolean
# - keywordStatuses - AdwordsApi::V13::ReportService::KeywordStatus
# - keywordType - AdwordsApi::V13::ReportService::KeywordType
# - keywords - SOAP::SOAPString
# - selectedColumns - SOAP::SOAPString
# - selectedReportType - SOAP::SOAPString
class DefinedReportJob < ReportJob
  attr_accessor :clientEmails
  attr_accessor :crossClient
  attr_accessor :endDay
  attr_accessor :id
  attr_accessor :name
  attr_accessor :startDay
  attr_accessor :status
  attr_accessor :adGroupStatuses
  attr_accessor :adGroups
  attr_accessor :adWordsType
  attr_accessor :aggregationTypes
  attr_accessor :campaignStatuses
  attr_accessor :campaigns
  attr_accessor :includeZeroImpression
  attr_accessor :keywordStatuses
  attr_accessor :keywordType
  attr_accessor :keywords
  attr_accessor :selectedColumns
  attr_accessor :selectedReportType

  def initialize(clientEmails = [], crossClient = nil, endDay = nil, id = nil, name = nil, startDay = nil, status = nil, adGroupStatuses = [], adGroups = [], adWordsType = nil, aggregationTypes = [], campaignStatuses = [], campaigns = [], includeZeroImpression = nil, keywordStatuses = [], keywordType = nil, keywords = [], selectedColumns = [], selectedReportType = nil)
    @clientEmails = clientEmails
    @crossClient = crossClient
    @endDay = endDay
    @id = id
    @name = name
    @startDay = startDay
    @status = status
    @adGroupStatuses = adGroupStatuses
    @adGroups = adGroups
    @adWordsType = adWordsType
    @aggregationTypes = aggregationTypes
    @campaignStatuses = campaignStatuses
    @campaigns = campaigns
    @includeZeroImpression = includeZeroImpression
    @keywordStatuses = keywordStatuses
    @keywordType = keywordType
    @keywords = keywords
    @selectedColumns = selectedColumns
    @selectedReportType = selectedReportType
  end
end

# AdGroupStatus
class AdGroupStatus < ::String
  Deleted = AdGroupStatus.new("Deleted")
  Enabled = AdGroupStatus.new("Enabled")
  Paused = AdGroupStatus.new("Paused")
end

# AdWordsType
class AdWordsType < ::String
  ContentOnly = AdWordsType.new("ContentOnly")
  SearchOnly = AdWordsType.new("SearchOnly")
end

# CampaignStatus
class CampaignStatus < ::String
  Active = CampaignStatus.new("Active")
  Deleted = CampaignStatus.new("Deleted")
  Ended = CampaignStatus.new("Ended")
  Paused = CampaignStatus.new("Paused")
  Pending = CampaignStatus.new("Pending")
  Suspended = CampaignStatus.new("Suspended")
end

# KeywordStatus
class KeywordStatus < ::String
  Active = KeywordStatus.new("Active")
  Deleted = KeywordStatus.new("Deleted")
  Disapproved = KeywordStatus.new("Disapproved")
  InActive = KeywordStatus.new("InActive")
  Paused = KeywordStatus.new("Paused")
end

# KeywordType
class KeywordType < ::String
  Broad = KeywordType.new("Broad")
  Exact = KeywordType.new("Exact")
  Phrase = KeywordType.new("Phrase")
end

# ReportJobStatus
class ReportJobStatus < ::String
  Completed = ReportJobStatus.new("Completed")
  Failed = ReportJobStatus.new("Failed")
  InProgress = ReportJobStatus.new("InProgress")
  Pending = ReportJobStatus.new("Pending")
end

# deleteReport
# - reportJobId - SOAP::SOAPLong
class DeleteReport #:nodoc: all
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# deleteReportResponse
class DeleteReportResponse #:nodoc: all
  def initialize
  end
end

# getAllJobs
class GetAllJobs #:nodoc: all
  def initialize
  end
end

# getAllJobsResponse
# - getAllJobsReturn - AdwordsApi::V13::ReportService::ReportJob
class GetAllJobsResponse #:nodoc: all
  attr_accessor :getAllJobsReturn

  def initialize(getAllJobsReturn = [])
    @getAllJobsReturn = getAllJobsReturn
  end
end

# getGzipReportDownloadUrl
# - reportJobId - SOAP::SOAPLong
class GetGzipReportDownloadUrl #:nodoc: all
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# getGzipReportDownloadUrlResponse
# - getGzipReportDownloadUrlReturn - SOAP::SOAPString
class GetGzipReportDownloadUrlResponse #:nodoc: all
  attr_accessor :getGzipReportDownloadUrlReturn

  def initialize(getGzipReportDownloadUrlReturn = nil)
    @getGzipReportDownloadUrlReturn = getGzipReportDownloadUrlReturn
  end
end

# getReportDownloadUrl
# - reportJobId - SOAP::SOAPLong
class GetReportDownloadUrl #:nodoc: all
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# getReportDownloadUrlResponse
# - getReportDownloadUrlReturn - SOAP::SOAPString
class GetReportDownloadUrlResponse #:nodoc: all
  attr_accessor :getReportDownloadUrlReturn

  def initialize(getReportDownloadUrlReturn = nil)
    @getReportDownloadUrlReturn = getReportDownloadUrlReturn
  end
end

# getReportJobStatus
# - reportJobId - SOAP::SOAPLong
class GetReportJobStatus #:nodoc: all
  attr_accessor :reportJobId

  def initialize(reportJobId = nil)
    @reportJobId = reportJobId
  end
end

# getReportJobStatusResponse
# - getReportJobStatusReturn - AdwordsApi::V13::ReportService::ReportJobStatus
class GetReportJobStatusResponse #:nodoc: all
  attr_accessor :getReportJobStatusReturn

  def initialize(getReportJobStatusReturn = nil)
    @getReportJobStatusReturn = getReportJobStatusReturn
  end
end

# scheduleReportJob
# - job - AdwordsApi::V13::ReportService::ReportJob
class ScheduleReportJob #:nodoc: all
  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# scheduleReportJobResponse
# - scheduleReportJobReturn - SOAP::SOAPLong
class ScheduleReportJobResponse #:nodoc: all
  attr_accessor :scheduleReportJobReturn

  def initialize(scheduleReportJobReturn = nil)
    @scheduleReportJobReturn = scheduleReportJobReturn
  end
end

# validateReportJob
# - job - AdwordsApi::V13::ReportService::ReportJob
class ValidateReportJob #:nodoc: all
  attr_accessor :job

  def initialize(job = nil)
    @job = job
  end
end

# validateReportJobResponse
class ValidateReportJobResponse #:nodoc: all
  def initialize
  end
end


end; end; end
