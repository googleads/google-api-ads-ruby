# Ads API Client Libraries for Ruby

This project hosts the new Ads common framework for Ruby, as well as the Ruby client libraries for the various SOAP-based Ads APIs at Google.

The Ruby client libraries make it easier to write Ruby clients to programmatically access your accounts.

New to the library? Check out the [Getting Started video screencast on YouTube](http://www.youtube.com/watch?v=PJx6oRyZx2Y) and take a look at the [wiki for this project](https://github.com/googleads/google-api-ads-ruby/wiki).

**Want to stay up-to-date with our latest releases?** Subscribe to the [master RSS feed on GitHub](https://github.com/googleads/google-api-ads-ruby/commits/master.atom).

## Products currently supported

 - Google AdWords and DoubleClick Ad Exchange Buyer API
 - Google's DoubleClick For Publishers API

## Client Library Feature

 - Support for logging incoming and outgoing SOAP messages;
 - Support for logging request information;
 - Fully based on new Savon backend.
 - Ruby 1.9, 2.0, 2.1, and 2.2 compatible.
 - ClientLogin, OAuth2.0 and OAuth2.0 JWT built-in authentication;
 - Support for API calls to different environments (Production, Sandbox);
 - Local validation for parameter number and type on API calls;
 - Thread-safe;
 - Ruby-like syntax, by converting all method names and properties to snake\_case instead of lowerCamelCase;
 - Simplified development model by using arrays and hashes instead of solid objects;
 - (AdWords) Support for tracking API unit usage;
 - (AdWords) Full support for AdHoc reporting.

## Submitting bug reports and/or feature requests

If you have issues directly related to the client library, use the [issue tracker](https://github.com/googleads/google-api-ads-ruby/issues).

If you have issues pertaining to a specific product, use the product support forums:

* [AdWords](https://groups.google.com/forum/#!forum/adwords-api)
* [DoubleClick Ad Exchange](https://groups.google.com/forum/#!forum/google-doubleclick-ad-exchange-buyer-api)
* [DoubleClick for Publishers](https://groups.google.com/forum/#!forum/google-doubleclick-for-publishers-api)

Make sure to subscribe to our [Google Plus page](https://plus.google.com/+GoogleAdsDevelopers)
for API change announcements and other news.

## Logging

 To enable logging, see the library-specific README files for [AdWords](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/README.md#23---logging) and [DFP](https://github.com/googleads/google-api-ads-ruby/blob/master/dfp_api/README.md#how-do-i-enable-logging).

## Updates

 - [AdsCommon ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/ads_common/ChangeLog)
 - [AdWords library ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/adwords_api/ChangeLog)
 - [DFP library ChangeLog](https://github.com/googleads/google-api-ads-ruby/blob/master/dfp_api/ChangeLog)
