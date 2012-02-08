#!/usr/bin/ruby
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# Tests issue #16.

require 'nori'
require 'test/unit'

require 'dfp_api/errors'
require 'dfp_api/v201111/line_item_service'

class TestDfpApi < Test::Unit::TestCase
  class StubService < DfpApi::V201111::LineItemService::LineItemService
    def stub_get_line_items_by_statement(xml_text)
      data = Nori.parse(xml_text)[:envelope][:body]
      return extract_result(data, 'get_line_items_by_statement')
    end
  end

  def test_issue_16
    assert_nothing_raised do
      service = StubService.new(
          DfpApi::Api.new,
          'https://www.google.com/apis/ads/publisher/v201111/LineItemService')
      result = service.stub_get_line_items_by_statement(get_xml_text)
      targeting = result[:results][0][:targeting][:inventory_targeting]
      assert_equal([1234567, 23456], targeting[:targeted_placement_ids])
    end
  end

  def get_xml_text
    return <<EOT
<?xml version="1.0"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
 <soap:Header>
  <ResponseHeader xmlns="https://www.google.com/apis/ads/publisher/v201101">
   <requestId>dac42656454</requestId>
   <responseTime>9</responseTime>
  </ResponseHeader>
 </soap:Header>
 <soap:Body>
  <getLineItemsByStatementResponse
      xmlns="https://www.google.com/apis/ads/publisher/v201101">
   <rval>
    <totalResultSetSize>1</totalResultSetSize>
    <startIndex>0</startIndex>
    <results>
     <orderId>345678</orderId>
     <id>89012</id>
     <name>some name</name>
     <orderName>someOrderName</orderName>
     <startDateTime>
      <date>
       <year>2011</year>
       <month>1</month>
       <day>1</day>
      </date>
      <hour>0</hour>
      <minute>0</minute>
      <second>0</second>
      <timeZoneID>America/New_York</timeZoneID>
     </startDateTime>
     <startDateTimeType>USE_START_DATE_TIME</startDateTimeType>
     <endDateTime>
      <date>
       <year>2011</year>
       <month>2</month>
       <day>1</day>
      </date>
      <hour>23</hour>
      <minute>59</minute>
      <second>0</second>
      <timeZoneID>America/New_York</timeZoneID>
     </endDateTime>
     <unlimitedEndDateTime>false</unlimitedEndDateTime>
     <creativeRotationType>OPTIMIZED</creativeRotationType>
     <deliveryRateType>EVENLY</deliveryRateType>
     <roadblockingType>ONE_OR_MORE</roadblockingType>
     <lineItemType>STANDARD</lineItemType>
     <unitType>IMPRESSIONS</unitType>
     <duration>LIFETIME</duration>
     <unitsBought>3</unitsBought>
     <costPerUnit>
      <currencyCode>USD</currencyCode>
      <microAmount>0</microAmount>
     </costPerUnit>
     <valueCostPerUnit>
      <currencyCode>USD</currencyCode>
      <microAmount>0</microAmount>
     </valueCostPerUnit>
     <costType>CPM</costType>
     <discountType>PERCENTAGE</discountType>
     <discount>0.0</discount>
     <creativeSizes>
      <width>160</width>
      <height>600</height>
      <isAspectRatio>false</isAspectRatio>
     </creativeSizes>
     <creativeSizes>
      <width>336</width>
      <height>280</height>
      <isAspectRatio>false</isAspectRatio>
     </creativeSizes>
     <creativeSizes>
      <width>728</width>
      <height>90</height>
      <isAspectRatio>false</isAspectRatio>
     </creativeSizes>
     <allowOverbook>false</allowOverbook>
     <stats>
      <impressionsDelivered>123</impressionsDelivered>
      <clicksDelivered>345</clicksDelivered>
     </stats>
     <deliveryIndicator>
      <expectedDeliveryPercentage>11.11111</expectedDeliveryPercentage>
      <actualDeliveryPercentage>22.222</actualDeliveryPercentage>
     </deliveryIndicator>
     <budget>
      <currencyCode>USD</currencyCode>
      <microAmount>0</microAmount>
     </budget>
     <status>DELIVERING</status>
     <reservationStatus>RESERVED</reservationStatus>
     <isArchived>false</isArchived>
     <LineItemSummary.Type>LineItem</LineItemSummary.Type>
     <targeting>
      <inventoryTargeting>
       <targetedPlacementIds>1234567</targetedPlacementIds>
       <targetedPlacementIds>23456</targetedPlacementIds>
      </inventoryTargeting>
     </targeting>
    </results>
   </rval>
  </getLineItemsByStatementResponse>
 </soap:Body>
</soap:Envelope>
EOT
  end
end
