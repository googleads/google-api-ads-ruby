# Encoding: utf-8
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# Handles v13 authentication.

require 'ads_common/auth/base_handler'

module AdwordsApi
  class V13LoginHandler < AdsCommon::Auth::BaseHandler
    def header_list(credentials)
      # Ensure that clientEmail and clientCustomerId are always present.
      return credentials.keys.dup() | [:clientEmail, :clientCustomerId]
    end
  end
end
