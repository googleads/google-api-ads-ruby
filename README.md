# Ads API Client Libraries for Ruby

This project hosts the new Ads common framework for Ruby, as well as the Ruby
client libraries for the various SOAP-based Ads APIs at Google.

The Ruby client libraries make it easier to write Ruby clients to
programmatically access your accounts.

**New to the library?** Take a look at the [wiki for this project](https://github.com/googleads/google-api-ads-ruby/wiki).

**Want to stay up-to-date with our latest releases?** Subscribe to the
[master RSS feed on GitHub](https://github.com/googleads/google-api-ads-ruby/commits/master.atom).

## Products currently supported

 - Google AdWords API [![AdWords Gem Version](https://badge.fury.io/rb/google-adwords-api.svg)](https://badge.fury.io/rb/google-adwords-api)
 - Google Ad Manager API [![DFP Gem Version](https://badge.fury.io/rb/google-dfp-api.svg)](https://badge.fury.io/rb/google-dfp-api)

## Client library features

 - Support for logging incoming and outgoing SOAP messages
 - Support for logging request information
 - Based on Savon library
 - Ruby 2.1, 2.2, 2.3, and 2.4 compatible
 - OAuth2 and OAuth2 JWT built-in authentication
 - Local validation for parameter number and type on API calls
 - Thread-safe
 - Ruby-like syntax, by converting all method names and properties to
   snake\_case instead of lowerCamelCase
 - Simplified development model by using arrays and hashes instead of solid
   objects
 - (AdWords) Full support for reporting and BatchJobService uploads

## Getting started

1. Install your library of choice using RubyGems.

        $ gem install google-adwords-api

   or

        $ gem install google-dfp-api

   Note: If you're using a version of Ruby lower than 2.2.2, you will need to
   manually install a previous version of Rack, a dependency of our HTTP
   library. You can do this with:

        $ gem install rack -v 1.6.4

1. Copy the sample config file (**adwords_api.yml** or **ad_manager_api.yml**)
for your product to your home directory and fill out the required properties.

  * [adwords_api.yml](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/adwords_api.yml)
  * [ad_manager_api.yml](https://github.com/googleads/google-api-ads-ruby/blob/master/ad_manager_api/ad_manager_api.yml)

1. Setup your OAuth2 credentials.

  The AdWords and Ad Manager APIs use [OAuth2](http://oauth.net/2/) as the
authentication mechanism. Follow the appropriate guide below based on your use
case.

  **If you're accessing an API using your own credentials...**

  * [Using AdWords](https://github.com/googleads/google-api-ads-ruby/wiki/API-access-using-own-credentials-(installed-application-flow))
  * [Using Ad Manager](https://github.com/googleads/google-api-ads-ruby/wiki/API-access-using-own-credentials-(server-to-server-flow))

  **If you're accessing an API on behalf of clients...**

  * [Developing a web application (AdWords or Ad Manager)](https://github.com/googleads/google-api-ads-ruby/wiki/API-access-on-behalf-of-your-clients-(web-flow))

1. See each product's individual README for more specific instructions:

  * [AdWords](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/README.md)
  * [Ad Manager](https://github.com/googleads/google-api-ads-ruby/blob/master/ad_manager_api/README.md)

## Submitting bug reports and/or feature requests

If you have issues directly related to the client library, use the [issue tracker](https://github.com/googleads/google-api-ads-ruby/issues).

If you have issues pertaining to a specific product, use the product support forums:

* [AdWords](https://groups.google.com/forum/#!forum/adwords-api)
* [Ad Manager](https://groups.google.com/forum/#!forum/google-doubleclick-for-publishers-api)

Make sure to subscribe to [our blog](https://googleadsdeveloper.blogspot.com) for API change announcements and other news.

## Logging

 To enable logging, see the library-specific README files for [AdWords](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/README.md#23---logging)
 or [Ad Manager](https://github.com/googleads/google-api-ads-ruby/blob/master/ad_manager_api/README.md#how-do-i-enable-logging).

## Updates

 - [AdsCommon ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/ads_common/ChangeLog)
 - [AdWords library ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/ChangeLog)
 - [Ad Manager library ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/ad_manager_api/ChangeLog)

## Contributing

See [CONTRIBUTING.md](https://github.com/googleads/google-api-ads-ruby/blob/master/CONTRIBUTING.md)
for details on how to contribute.

This library has adopted the [community-driven style guide](https://github.com/bbatsov/ruby-style-guide)
hosted by bbatsov. Updates to the existing code base will be made incrementally
to conform to the style defined there, and all new code will be subject to that
style guide. Keep this in mind while crafting contributions.

Note: if you have an ad blocker active, you might experience issues while
submitting an issue or pull request. You can still contribute by disabling the
ad blocker for this project URL.
