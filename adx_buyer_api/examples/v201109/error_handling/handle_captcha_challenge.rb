#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
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
# This example illustrates how to handle 'CAPTCHA required' authorization
# errors. Refer to the best practices guide on how to avoid this error:
#
# http://code.google.com/apis/adwords/docs/guides/bestpractices.html#auth_tokens

require 'adwords_api'

def handle_captcha_challenge()
  # Initialize token variable.
  logintoken = nil

  # This code will repeatedly request authToken from the server until it gets
  # a CAPTCHA challenge request. It is here for illustration purposes only
  # and should never be used in a real application.
  begin
    MAX_RETRIES.times do |retry_number|
      puts "Running request %d of %d..." % [retry_number + 1, MAX_RETRIES]
      # Forcing library to request a new authorization token.
      adwords = AdwordsApi::Api.new
      auth_token = adwords.authorize()
    end
    # Still no challenge, make sure ClientLogin authorization is used.
    raise StandardError, "Failed to get challenge after %d requests." %
        MAX_RETRIES
  rescue AdsCommon::Errors::CaptchaRequiredError => e
    logintoken = e.captcha_token
  end

  puts "CaptchaRequiredError occurred. To recover download the image and type" +
      " the CAPTCHA below: %s\n" % e.captcha_url
  puts 'Enter code or ENTER to retry: '
  logincaptcha = gets.chomp

  # Initialize variable for extra parameters.
  credentials = {}
  if logincaptcha and !logincaptcha.empty?
    credentials[:logincaptcha] = logincaptcha
    credentials[:logintoken] = logintoken
  end

  begin
    adwords = AdwordsApi::Api.new
    auth_token = adwords.authorize(credentials)
    puts "Successfully retrieved authToken: " + auth_token
  rescue AdsCommon::Errors::CaptchaRequiredError => e
    puts 'Invalid CAPTCHA text entered.'
    raise e
  end
end

if __FILE__ == $0
  API_VERSION = :v201109
  MAX_RETRIES = 500

  begin
    handle_captcha_challenge()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue AdwordsApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
