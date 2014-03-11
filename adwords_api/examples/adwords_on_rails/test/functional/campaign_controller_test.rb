require 'test_helper'

class CampaignControllerTest < ActionController::TestCase
  test "should get list" do
    get :index
    assert_response :success
  end

end
