# Encoding: utf-8
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
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
# Contains helper methods to allow incremental uploads with the
# BatchJobService.

module AdwordsApi
  class IncrementalUploadHelper
    attr_reader :upload_url, :uploaded_bytes

    # Default constructor.
    #
    # Args:
    # - batch_job_service: The instance of BatchJobService that is providing
    # this helper
    # - uploaded_bytes: The number of bytes that have already been uploaded
    # as part of this incremental process.
    # - upload_url: The URL that should be used to upload incremental
    # operations for this job.
    #
    def initialize(batch_job_utils, uploaded_bytes, upload_url)
      @batch_job_utils = batch_job_utils
      @uploaded_bytes = uploaded_bytes
      if @uploaded_bytes == 0
        @upload_url = @batch_job_utils.initialize_url(upload_url)
      else
        @upload_url = upload_url
      end
      @finished = false
    end

    # Takes an array of operations and puts it to the batch job incrementally.
    #
    # Args:
    # - hash_operations: An array of operations to put, represented in hashes
    # like you would normally pass to services.
    # - is_last_request: Whether this request is the last request of the
    # incremental job.
    #
    # Raises:
    # - InvalidBatchJobOperationError: If this incremental upload is already
    # finished or if there is an error converting the hash operations to
    # soap operations.
    #
    def upload(operations, is_last_request = false)
      check_status()
      @uploaded_bytes = @batch_job_utils.put_incremental_operations(
        operations, @upload_url, @uploaded_bytes, is_last_request)
      @finished = true if is_last_request
    end

    private

    def check_status()
      if @finished
        raise AdwordsApi::Errors::InvalidBatchJobOperationError,
            'Cannot put new operations to completed incremental upload.'
      end
    end
  end
end
