#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the 'License');
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an 'AS IS' BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# Tests the AdManagerDate and AdManagerDateTime.

require 'test/unit'
require 'ad_manager_api'


class TestAdManagerApi < Test::Unit::TestCase
  def setup()
    @ad_manager = AdManagerApi::Api.new({})
  end

  # Test initializer with integer params
  def test_initialize_date()
    date = @ad_manager.date(2017, 11, 7)
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(7, date.day)
  end

  # Test initializer with hash param
  def test_initialize_date_with_hash()
    date = @ad_manager.date({:year => 2017, :month => 11, :day => 7})
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(7, date.day)
  end

  # Test initializer with Date param
  def test_initialize_date_with_date()
    date = @ad_manager.date(Date.new(2017, 11, 7))
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(7, date.day)
  end

  # Test adding a Number to an AdManagerApi::AdManagerDate
  def test_date_plus_number()
    date = @ad_manager.date(2017, 11, 7)
    date = date + 1
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(8, date.day)
    assert_true(date.is_a? AdManagerApi::AdManagerDate)
  end

  # Test subtracting a Number from an AdManagerApi::AdManagerDate
  def test_date_minus_number()
    date = @ad_manager.date(2017, 11, 7)
    date = date - 1
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(6, date.day)
    assert_true(date.is_a? AdManagerApi::AdManagerDate)
  end

  # Test shifting an AdManagerApi::AdManagerDate right by some number of months
  def test_date_shift_right()
    date = @ad_manager.date(2017, 10, 7)
    date = date >> 1
    assert_equal(2017, date.year)
    assert_equal(11, date.month)
    assert_equal(7, date.day)
    assert_true(date.is_a? AdManagerApi::AdManagerDate)
  end

  # Test shifting an AdManagerApi::AdManagerDate left by some number of months
  def test_date_shift_left()
    date = @ad_manager.date(2017, 11, 7)
    date = date << 1
    assert_equal(2017, date.year)
    assert_equal(10, date.month)
    assert_equal(7, date.day)
    assert_true(date.is_a? AdManagerApi::AdManagerDate)
  end

  # Test converting an AdManagerApi::AdManagerDate to a hash
  def test_date_to_h()
    date = @ad_manager.date(2017, 11, 7)
    hash = {:year => 2017, :month => 11, :day => 7}
    assert_equal(hash, date.to_h)
  end

  # Test initializer with standard params
  def test_initialize_datetime()
    datetime = @ad_manager.datetime(
        2017, 11, 7, 17, 30, 10, 'America/New_York'
    )
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7, datetime.day)
    assert_equal(17, datetime.hour)
    assert_equal(30, datetime.min)
    assert_equal(10, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
  end

  # Test initializer with hash param
  def test_initialize_datetime_with_hash()
    hash = {
      :date => {:year => 2017, :month => 11, :day => 7},
      :hour => 17, :minute => 30, :second => 10,
      :time_zone_id => 'America/New_York'
    }
    datetime = @ad_manager.datetime(hash)
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7, datetime.day)
    assert_equal(17, datetime.hour)
    assert_equal(30, datetime.min)
    assert_equal(10, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
  end

  # Test initializer with Time param
  def test_initialize_datetime_with_time()
    time = Time.new(2017, 11, 7, 17, 30, 10)
    datetime = @ad_manager.datetime(time, 'America/New_York')
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7, datetime.day)
    assert_equal(17, datetime.hour)
    assert_equal(30, datetime.min)
    assert_equal(10, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
  end

  # Test initializer with DateTime param
  def test_initialize_datetime_with_datetime()
    time = DateTime.new(2017, 11, 7, 17, 30, 10)
    datetime = @ad_manager.datetime(time, 'America/New_York')
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7, datetime.day)
    assert_equal(17, datetime.hour)
    assert_equal(30, datetime.min)
    assert_equal(10, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
  end

  # Test initializer error with no timezone param
  def test_initialize_datetime_without_timezone()
    assert_raise(RuntimeError) do
      datetime = @ad_manager.datetime(2017, 11, 7, 17, 30, 10)
    end
  end

  # Test initializer with standard params in Pacific time
  def test_initialize_datetime_in_pacific_time()
    datetime = @ad_manager.datetime(
        2017, 11, 7, 17, 30, 10, 'America/Los_Angeles'
    )
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7, datetime.day)
    assert_equal(17, datetime.hour)
    assert_equal(30, datetime.min)
    assert_equal(10, datetime.sec)
    assert_equal('America/Los_Angeles', datetime.timezone.identifier)
    assert_equal(-28800, datetime.utc_offset)
  end

  # Test adding a Number to an AdManagerApi::AdManagerDateTime
  def test_datetime_plus_number()
    sec_delta = 5  # Between 0 and 49
    min_delta = 10  # Between 0 and 29
    hour_delta = 1  # Between 0 and 42
    day_delta = 3  # Between 0 and 23
    datetime = @ad_manager.datetime(
        2017, 11, 7, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime + sec_delta + min_delta * 60 + hour_delta * 60 * 60 +
        day_delta * 60 * 60 * 24
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7 + day_delta, datetime.day)
    assert_equal(17 + hour_delta, datetime.hour)
    assert_equal(30 + min_delta, datetime.min)
    assert_equal(10 + sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test subtracting a Number from an AdManagerApi::AdManagerDateTime
  def test_datetime_minus_number()
    sec_delta = 5  # Between 0 and 10
    min_delta = 10  # Between 0 and 30
    hour_delta = 1  # Between 0 and 17
    day_delta = 3  # Between 0 and 6
    datetime = @ad_manager.datetime(
        2017, 11, 7, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime - sec_delta - min_delta * 60 - hour_delta * 60 * 60 -
        day_delta * 60 * 60 * 24
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(7 - day_delta, datetime.day)
    assert_equal(17 - hour_delta, datetime.hour)
    assert_equal(30 - min_delta, datetime.min)
    assert_equal(10 - sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test adding a Number to an AdManagerApi::AdManagerDateTime on a month
  # boundary
  def test_datetime_plus_number_month_boundary()
    sec_delta = 5  # Between 0 and 49
    min_delta = 10  # Between 0 and 29
    hour_delta = 1  # Between 0 and 42
    day_delta = 3  # Between 0 and 23
    datetime = @ad_manager.datetime(
        2017, 11, 30, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime + sec_delta + min_delta * 60 + hour_delta * 60 * 60 +
        day_delta * 60 * 60 * 24
    assert_equal(2017, datetime.year)
    assert_equal(12, datetime.month)
    assert_equal(day_delta, datetime.day)
    assert_equal(17 + hour_delta, datetime.hour)
    assert_equal(30 + min_delta, datetime.min)
    assert_equal(10 + sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test subtracting a Number from an AdManagerApi::AdManagerDateTime on a month
  # boundary
  def test_datetime_minus_number_month_boundary()
    sec_delta = 5  # Between 0 and 10
    min_delta = 10  # Between 0 and 30
    hour_delta = 1  # Between 0 and 17
    day_delta = 3  # Between 0 and 6
    datetime = @ad_manager.datetime(
        2017, 12, 1, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime - sec_delta - min_delta * 60 - hour_delta * 60 * 60 -
        day_delta * 60 * 60 * 24
    assert_equal(2017, datetime.year)
    assert_equal(11, datetime.month)
    assert_equal(31 - day_delta, datetime.day)
    assert_equal(17 - hour_delta, datetime.hour)
    assert_equal(30 - min_delta, datetime.min)
    assert_equal(10 - sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test adding a Number to an AdManagerApi::AdManagerDateTime on a year
  # boundary
  def test_datetime_plus_number_year_boundary()
    sec_delta = 5  # Between 0 and 49
    min_delta = 10  # Between 0 and 29
    hour_delta = 1  # Between 0 and 42
    day_delta = 3  # Between 0 and 23
    datetime = @ad_manager.datetime(
        2017, 12, 31, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime + sec_delta + min_delta * 60 + hour_delta * 60 * 60 +
        day_delta * 60 * 60 * 24
    assert_equal(2018, datetime.year)
    assert_equal(1, datetime.month)
    assert_equal(day_delta, datetime.day)
    assert_equal(17 + hour_delta, datetime.hour)
    assert_equal(30 + min_delta, datetime.min)
    assert_equal(10 + sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test subtracting a Number from an AdManagerApi::AdManagerDateTime on a year
  # boundary
  def test_datetime_minus_number_year_boundary()
    sec_delta = 5  # Between 0 and 10
    min_delta = 10  # Between 0 and 30
    hour_delta = 1  # Between 0 and 17
    day_delta = 3  # Between 0 and 6
    datetime = @ad_manager.datetime(
        2018, 1, 1, 17, 30, 10, 'America/New_York'
    )
    datetime = datetime - sec_delta - min_delta * 60 - hour_delta * 60 * 60 -
        day_delta * 60 * 60 * 24
    assert_equal(2017, datetime.year)
    assert_equal(12, datetime.month)
    assert_equal(32 - day_delta, datetime.day)
    assert_equal(17 - hour_delta, datetime.hour)
    assert_equal(30 - min_delta, datetime.min)
    assert_equal(10 - sec_delta, datetime.sec)
    assert_equal('America/New_York', datetime.timezone.identifier)
    assert_equal(-18000, datetime.utc_offset)
    assert_true(datetime.is_a? AdManagerApi::AdManagerDateTime)
  end

  # Test converting an AdManagerApi::AdManagerDateTime into a hash
  def test_datetime_to_h()
    datetime = @ad_manager.datetime(2017, 11, 7, 17, 30, 10, 'America/New_York')
    hash = {
      :date => {:year => 2017, :month => 11, :day => 7},
      :hour => 17, :minute => 30, :second => 10,
      :time_zone_id => 'America/New_York'
    }
    assert_equal(hash, datetime.to_h)
  end

  # Test that restricted Time methods throw an error on
  # AdManagerApi::AdManagerDateTime
  def test_datetime_restricted_methods()
    datetime = @ad_manager.utc()
    restricted_functions = [:dst?, :getgm, :getlocal, :getutc, :gmt, :gmtime,
        :gmtoff, :isdst, :localtime, :utc]
    restricted_functions.each do |function|
      assert_raise(NoMethodError) do
        datetime.send(function)
      end
    end
  end
end
