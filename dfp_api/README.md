# Google's DoubleClick For Publishers API Ruby Client Library

Google's DoubleClick For Publishers API service lets developers design computer
programs that interact directly with the DFP platform. With these applications,
advertisers and third parties can more efficiently -- and creatively -- manage
their large or complex DoubleClick for Publishers accounts.

The DFP API Ruby Client Library makes it easy to write Ruby clients to
programmatically access DoubleClick for Publishers accounts. The client library
is available as a Ruby gem or gzipped tarball. It depends on the
google-ads-common library which is base for all Google Ads APIs for Ruby.


## What's in the client library?

The client library provides full access to all the functionality of the
DoubleClick For Publishers API web services plus more. It includes:

  - DfpApi::Api class: The Api class provides methods for setting credentials
    for accessing DFP accounts as well as for creating instances of the DFP
    Service classes.

  - Ruby native objects support: All data is accepted and returned as Ruby
    hashes and arrays. No complex types are required!

  - Ruby naming conversions: all method and field names are converted to Ruby
    standard snake_case format.

  - Helpful utilities: The utilities designed as service extensions help you to
    schedule and run reports and import images into the client library.

  - Logger support: The library provides simple methods for logging the SOAP XML
    messages of all requests and responses as well as HTTP headers.

  - ApiException class: The Ruby client library converts XML faults into
    ApiExceptions where possible. For an example of how to use ApiException, see
    the error_handling.rb sample code.

  - Examples: The Ruby client library comes with code samples in the "examples/"
    directory. We encourage you to use code samples to get started writing your
    own application. All the code samples are runnable out of the box, but you
    will have to set your credentials in the "~/dfp_api.yml" configuration file.


# How to get started

## Installation

`google-dfp-api` is a Ruby gem. See

> [http://docs.rubygems.org/read/book/1]()

Install it using the gem install command:

    $ gem install google-dfp-api

or if you downloaded the gem package manually, use:

    $ gem install --local google-dfp-api-VERSION.gem


## Using the library

In order to use the library you need to include its modules:

    require 'dfp_api'

Then, library object could be instantiated:

    dfp = DfpApi::Api.new

The default constructor will load library configuration from `~/dfp_api.yml`
file. Alternatively, you can pass a configuration hash directly to the
constructor:

    dfp = DfpApi::Api.new({
      :authentication => {
          :method => 'OAuth2',
          :oauth2_client_id => 'INSERT_OAUTH2_CLIENT_ID_HERE',
          :oauth2_client_secret => 'INSERT_OAUTH2_CLIENT_SECRET_HERE',
          :application_name => 'Ruby DFP Sample',
          :network_code => 123456
      }
    })

To obtain OAuth2 client credentials, follow instructions
[on the wiki](http://github.com/googleads/google-api-ads-ruby/wiki/OAuth2).

An example of configuration file is available as part of this library.

*Note*: if you are using Ruby 1.8 you may need to include RubyGems to be able
to require other gems code. There are several ways to do it, the easiest one is
to pass '-rubygems' parameter to the ruby interpreter:

    $ ruby -rubygems my_program_that_uses_gems

you can also set this up in the environment:

    $ export RUBYOPT="rubygems"

or add it to the bash configuration file:

    $ echo 'export RUBYOPT="rubygems"' >> ~/.bashrc


## Using OAuth2.0

In order to use OAuth you just need to:

  - set authentication method to 'OAuth2' in the configuration;

  - include oauth2_client_id and oauth2_client_secret;

  - handle OAuth2VerificationRequired error and pass verification code to the
    library.

See 'dfp_api.yml' configuration file and 'common/oauth2_handling.rb' example for
more details.

## Accessing services

Once the library object is created you can request services with a 'service'
method:

    user_service = dfp.service(:UserService, <API_VERSION>)

where <API_VERSION> is required version of DFP API as symbol, e.g. :v201403.

Then you should be able to execute service methods:

    # Create statement for all users up to 500 max.
    statement = {:query => "LIMIT 500"}

    # Execute request and get the response.
    page = user_service.get_users_by_statement(statement)

In case of paged results, the requested objects are available as `:results` key:

    # Print details about each user in results page.
    page[:results].each_with_index do |user|
      puts "[%d] name: %s, email: %s" % [user[:id], user[:name], user[:email]]
    end

All object fields are automatically parsed by the library to convert types to
native ones (Integer, Float etc.) where applicable. The field names are also
converted to symbols in Ruby native snake_case format:

    "displayName" -> :display_name


## Running examples

Before running examples, please ensure that your `dfp_api.yml` is filled in and
placed in your home directory. You can find the examples as part of the
installed gem, download them as a tarball or view them online.

Examples can be run by executing by running:

    $ ruby <example_name>

from the `examples/<version>/<service_name>` directory i.e.

    $ cd examples/v201403/user_service
    $ ruby get_all_users.rb

Some examples require modification to be functional, like create_order example
needs Advertiser, Trafficker and Salesperson IDs to be filled in.


## How do I enable logging?

It is often useful to see a trace of the raw SOAP XML being sent and received.
The quickest way of achieving this when debugging your application is by setting
the `library.log_level` configuration variable to 'DEBUG':

    config[:library] = {
      :log_level => 'DEBUG'
    }

or via configuration file (see example).

This will output the SOAP XML to STDOUT, which will usually show up in your
terminal window.

There's also an option of logging requests and XML to a file. In order to enable
this, you should create a standard Logger object and pass it to the library:

    require 'logger'
    logger = Logger.new('path/to/log_filename')
    logger.level = Logger::DEBUG
    dfp = DfpApi::Api.new
    dfp.logger = logger

Request details are logged at the INFO log level, while raw HTTP headers and XML
dumps are logged at the DEBUG log level. For more details on using Logger refer
to the Ruby Logger documentation.


## What if I am behind an HTTP Proxy server?

You can specify a proxy server to be used for all requests as part of
configuration hash:

    config[:connection] = {
      :proxy => 'http://user:password@proxy_hostname:8080'
    }

or via configuration file (see example).

## How do I enable GZip responses compression?

The library offers a transparent compression option which can be enabled in the
configuration file or by the following setting:

    config[:connection] = {
      :enable_gzip => true
    }

Enabling this option will set the headers required to request the server to
respond in gzipped format. All requests are sent uncompressed regardless.


# External dependencies:

The following gem libraries are required:

  - google-ads-savon
  - google-ads-common

# Docs for Developers

## Rake targets

To regenerate all the stubs for all versions if needed:

    $ rake generate

To target a specific version:

    $ rake generate[version]

For example:

    $ rake generate[v201403]

To target a specific service in a specific version:

    $ rake generate[version,service]

For example:

    $ rake generate[v201403,CreativeService]

To build the gem:

    $ gem build google-dfp-api.gemspec

To run unit tests on the library:

    $ rake test


# Where do I submit bug reports and feature requests?

Bug reports and feature requests can be posted
[on the library page](http://github.com/googleads/google-api-ads-ruby/issues).

Questions can be asked
[on the forum](http://groups.google.com/group/google-doubleclick-for-publishers-api/).

Make sure to subscribe to our
[Google Plus page](https://plus.google.com/+GoogleAdsDevelopers) for API change
announcements and other news.

# Copyright/License Info

## License

Copyright 2011-2015, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use
this file except in compliance with the License.
You may obtain a copy of the License at

> [http://www.apache.org/licenses/LICENSE-2.0]()

Unless required by applicable law or agreed to in writing, software distributed
under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
CONDITIONS OF ANY KIND, either express or implied. See the License for the
specific language governing permissions and limitations under the License.


## Authors

Author:
    Danial Klimkin

Maintainer:
    Nicholas Chen
