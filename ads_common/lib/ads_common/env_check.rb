# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
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
# Check whether the current version of Ruby is supported by the client library.

require 'ads_common/errors'

MIN_RUBY_RECOMMENDED_VERSION = Gem::Version.new('2.1')

# Checks current ruby version to make sure it's supported.
def check_version(logger)
  if Gem::Version.new(RUBY_VERSION.dup()) < MIN_RUBY_RECOMMENDED_VERSION
    logger.warn(
        ('You are using a deprecated version of Ruby (%s). ' +
        'Consider upgrading to a fully supported version %s or later') %
        [RUBY_VERSION, MIN_RUBY_RECOMMENDED_VERSION]
    )
  end
end
