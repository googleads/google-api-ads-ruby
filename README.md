# Ad Manager SOAP API Client Libraries for Ruby

This project hosts the Ruby client library for Google Ad Manager, as well as the
Ads SOAP API common framework for Ruby.

The Ruby client libraries make it easier to write Ruby clients to
programmatically access your accounts.

**New to the library?** Take a look at the [wiki for this project](https://github.com/googleads/google-api-ads-ruby/wiki).

**Want to stay up-to-date with our latest releases?** Subscribe to the
[master RSS feed on GitHub](https://github.com/googleads/google-api-ads-ruby/commits/HEAD.atom).

## Products currently supported

 - Google Ad Manager API [![DFP Gem Version](https://badge.fury.io/rb/google-dfp-api.svg)](https://badge.fury.io/rb/google-dfp-api)

## Client library features

 - Support for logging incoming and outgoing SOAP messages
 - Support for logging request information
 - Based on Savon library
 - Ruby >=3.1 compatible
 - OAuth2 and OAuth2 JWT built-in authentication
 - Local validation for parameter number and type on API calls
 - Thread-safe
 - Ruby-like syntax, by converting all method names and properties to
   snake\_case instead of lowerCamelCase
 - Simplified development model by using arrays and hashes instead of solid
   objects

## Getting started

1. Install the library using RubyGems.

        $ gem install google-dfp-api

1. Copy the sample config file to your home directory and fill out the
required properties.

  * [ad_manager_api.yml](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/ad_manager_api/ad_manager_api.yml)

1. Setup your OAuth2 credentials.

  The Ad Manager APIs use [OAuth2](http://oauth.net/2/) as the
authentication mechanism. Follow the appropriate guide below based on your use
case.

  **If you're accessing an API using your own credentials...**

  * [Using Ad Manager](https://github.com/googleads/google-api-ads-ruby/wiki/API-access-using-own-credentials-(server-to-server-flow))

  **If you're accessing an API on behalf of clients...**

  * [Developing a web application (Ad Manager)](https://github.com/googleads/google-api-ads-ruby/wiki/API-access-on-behalf-of-your-clients-(web-flow))

1. See each product's individual README for more specific instructions:

  * [Ad Manager](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/ad_manager_api/README.md)

## Submitting bug reports and/or feature requests

If you have issues directly related to the client library, use the [issue tracker](https://github.com/googleads/google-api-ads-ruby/issues).

If you have issues pertaining to a specific product, use the product support forums:

* [Ad Manager](https://groups.google.com/forum/#!forum/google-doubleclick-for-publishers-api)

Make sure to subscribe to [our blog](https://googleadsdeveloper.blogspot.com) for API change announcements and other news.

## Logging

 To enable logging, see the library-specific README: [Ad Manager](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/ad_manager_api/README.md#how-do-i-enable-logging).

## Updates

 - [AdsCommon ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/ads_common/ChangeLog)
 - [Ad Manager library ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/ad_manager_api/ChangeLog)

## Contributing

See [CONTRIBUTING.md](https://github.com/googleads/google-api-ads-ruby/blob/HEAD/CONTRIBUTING.md)
for details on how to contribute.

This library has adopted the [community-driven style guide](https://github.com/bbatsov/ruby-style-guide)
hosted by bbatsov. Updates to the existing code base will be made incrementally
to conform to the style defined there, and all new code will be subject to that
style guide. Keep this in mind while crafting contributions.

Note: if you have an ad blocker active, you might experience issues while
submitting an issue or pull request. You can still contribute by disabling the
ad blocker for this project URL.
