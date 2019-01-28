# Google AdWords Client Library

Welcome to the next generation Google-developed Ruby client library for the
AdWords API!

It contains full support for all API services with full stubs, and a simplified
programming interface that lets you handle everything in native Ruby
collections.


# Docs for Users

## 1 - Installation

`google-adwords-api` is a ruby gem. See
[http://guides.rubygems.org/rubygems-basics/]().

Install it using the gem install command:

    $ gem install --remote google-adwords-api

The following gem libraries are required:

 - google-ads-savon
 - google-ads-common

Note: If you're using a version of Ruby lower than 2.2.2, you will need to
manually install a previous version of Rack, a dependency of our HTTP library.
You can do this with:

    $ gem install rack -v 1.6.4

## 2 - Using the client library

Before starting to use the client library, you need to set up OAuth2. You can
find our guide on how to obtain OAuth2 credentials
[on the wiki](https://github.com/googleads/google-api-ads-ruby/wiki/OAuth2).

By default, the API uses a config file in `ENV['HOME']/adwords_api.yml`. When
generating your OAuth2 refresh token, you will be given the option for the
sample to automatically store the refresh token in this file.

You can also pass the API a manually constructed config hash like:

    adwords = AdwordsApi::Api.new({
      :authentication => {
          :method => 'OAuth2',
          :oauth2_client_id => 'INSERT_OAUTH2_CLIENT_ID_HERE',
          :oauth2_client_secret => 'INSERT_OAUTH2_CLIENT_SECRET_HERE',
          :developer_token => 'DEVELOPER_TOKEN',
          :client_customer_id => '012-345-6789',
          :user_agent => 'Ruby Sample'
      },
      :service => {
        :environment => 'PRODUCTION'
      }
    })

Once you have all the requisite setup complete, you're ready to make an API
call. The easiest way to do this is to look at one of our
[examples](https://github.com/googleads/google-api-ads-ruby/tree/master/adwords_api/examples).
The `adwords_on_rails` example will show how to use the web flow, and the other
examples will use the installed application OAuth2 flow.

The basics of making a request are:

 1. Include the library with `require`:

        require 'adwords_api'

 2. Create an API instance:

        adwords = AdwordsApi::Api.new

 3. Specify which service you're looking to use, and which version:

        campaign_srv = adwords.service(:CampaignService, :v201809)

 4. You should now be able to just use the API methods in the returned object:

        # Get 'Id', 'Name' and 'Status' fields of all campaigns.
        campaigns = campaign_srv.get({:fields => ['Id', 'Name', 'Status']})

See the code in the examples directory for more thorough working examples you
can build from.

*Note*: If your setup requires you to send connections through a proxy server,
please set the appropriate options in the config file or config hash.
For example:

    config[:connection] = {
      :proxy => 'http://user:password@proxy_hostname:8080'
    }

### 2.1 - Ruby names for a Ruby library

In order to make things more Ruby-like for our Ruby developers, we've renamed
API objects and methods to more closely match Ruby conventions. This means using
snake_case for methods and parameters, and UpperCamelCase for class names.

For example, the `startDate` field of the Campaign object is named `start_date`
in the client library. The `get` method, returns a CampaignPage object which has
`entries` and `total_num_entries` fields. So, to access the return
values, you would do this:

    response = campaign_srv.get(selector)
    num_entries = response[:total_num_entries]

Essentially, all you have to do is follow Ruby conventions, and the library will
do the rest. All of the examples are written following this standard.


### 2.2 - Using the Test Account

For testing purposes, obtain a Test Account in the production environment. Any
request against a Test Account inccurs no API units charge. See
[this guide](https://developers.google.com/adwords/api/docs/test-accounts) for
more details.

To use the library against a Test Account, set the `client_customer_id` property in
the configuration file to its client customer ID.


### 2.3 - Logging

It is often useful to see a trace of the raw SOAP XML being sent and received.
The quickest way of achieving this when debugging your application is by setting
the `library.log_level` configuration variable to DEBUG.

    config[:library] = {
      :log_level => 'DEBUG'
    }

This can alternatively be done via a configuration file.

This will output the SOAP XML to `stderr`, which will usually show up in your
terminal window.

There's also an option of logging requests and XML to a file. In order to enable
this, you should create a standard Logger object and pass it to the library:

    require 'logger'
    logger = Logger.new('path/to/log_filename')
    logger.level = Logger::DEBUG
    adwords = AdwordsApi::Api.new
    adwords.logger = logger

Request details and units spend are logged at the INFO log level, while raw HTTP
headers and XML dumps are logged at the DEBUG log level. For more details on
using Logger refer to the Ruby Logger documentation.


### 2.4 - Calculating operations usage

Each AdWords API operation performed consumes a certain number of operations as
described in the
[rate sheet](https://developers.google.com/adwords/api/docs/ratesheet).

The amount of operations consumed is returned in the header part of the SOAP
response. This information can be obtained by passing a user block during the
method call:

    response = campaign_srv.get(selector) do |header|
      puts "Operations consumed: %d" % header[:operations]
    end

You can also retrieve the response body as the second block parameter:

    campaign_srv.get(selector) {|header, body| ... }


### 2.5 - GZip compression

The library offers a transparent compression option which can be enabled in the
configuration file or by the following setting:

    config[:connection] = {
      :enable_gzip => true
    }

Enabling this option will set the headers required to request the server to
respond in gzipped format. All requests are sent uncompressed regardless.


### 2.6 - Utilities

The library offers utilities to make fetching reports and using the
BatchJobService easier. Take a look at our wiki page on
[AdWords Utilities](https://github.com/googleads/google-api-ads-ruby/wiki/AdWords-Utilities)
for more information.


# Docs for Developers

## Rake targets

To regenerate all the stubs for all versions if needed:

    $ rake generate

To target a specific version:

    $ rake generate[version]

For example:

    $ rake generate[v201809]

To target a specific service in a specific version:

    $ rake generate[version,service]

For example:

    $ rake generate[v201809,CampaignService]

To build the gems:

    $ gem build google-adwords-api.gemspec

To run unit tests on the library:

    $ rake test


## Where do I submit bug reports and feature requests?

Bug reports and feature requests can be posted
[on the library page](https://github.com/googleads/google-api-ads-ruby/issues).

Questions can be asked [on the forum](http://groups.google.com/group/adwords-api).

Make sure to subscribe to our
[Google Plus page](https://plus.google.com/+GoogleAdsDevelopers) for API change
announcements and other news.


# Copyright/License Info

## Licence

Copyright 2010-2017, Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at:

> [http://www.apache.org/licenses/LICENSE-2.0]()

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Authors

Authors:

 - Sérgio Gomes
 - Danial Klimkin
 - Michael Cloonan

Maintainer:

 - Michael Cloonan
