# Google AdsCommon Library

This gem is a dependency for the new generation of Ruby Google Ads client
libraries. It contains common code shared among all of these libraries, such as
authentication, SOAP stub generation, error handling, logging, etc.


# Docs for Users

## 1 - Installation:

`google-ads-common` is a Ruby gem. See

> [http://docs.rubygems.org/read/book/1]()

Install it using the gem install command.

    $ gem install google-ads-common

The following gem libraries are required:

 - google-ads-savon
 - httpi
 - httpclient
 - signet

Note: If you're using a version of Ruby lower than 2.2.2, you will need to
manually install a previous version of Rack, a dependency of our HTTP library.
You can do this with:

    $ gem install rack -v 1.6.4

# Docs for Developers

## 1 - Directory Structure

- `lib/ads_common/`: Contains the bulk of the library.
  - `auth/`: Contains classes that can handle different authentication methods.
    Currently only supports ClientLogin.
  - `build/`: Contains classes that handle code generation, packaging and other
    build-time tasks for client libraries (not for google-ads-common).
  - `savon_headers/`: Contains classes that handle header injection into savon
    requests.
- `test/`: Contains the unit tests for the library.


## 2 - Commands

To build the gem:

    $ gem build google-ads-common.gemspec

To run unit tests on the library:

    $ rake test


## 3 - Resources

Ruby client libraries code page:

> [https://github.com/googleads/google-api-ads-ruby]()

Google Ads Developers Plus page:

> [https://plus.google.com/+GoogleAdsDevelopers]()


# Copyright/License Info

Copyright 2010-2017, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

> [http://www.apache.org/licenses/LICENSE-2.0]()

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


## Authors

 - Sérgio Gomes
 - Danial Klimkin
 - Michael Cloonan

## Maintainer

 - Michael Cloonan
