#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2010, Google Inc. All Rights Reserved.
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
# Contains extensions to the API, that is, service helper methods provided in
# client-side by the client library.

module DfpApi

  module Extensions

    # Maintains a list of all extension methods, indexed by version and service.
    # Using camelCase to match API method names.
    @@extensions = {
    }

    # Defines the parameter list for every extension method
    @@methods = {
    }

    # Return list of all extension methods, indexed by version and service.
    def self.extensions
      return @@extensions
    end

    # Return the parameter list for every extension method.
    def self.methods
      return @@methods
    end

    #########################################################################
    # NOTE: The following extension methods shouldn't be used directly; they
    # should instead be used from the services wrappers they get mapped to.
    # For example, you should use ReportService::downloadXmlReport instead of
    # Extensions::downloadXmlReport.
    #########################################################################

  end
end
