require 'test_helper'

class ChronicPingControllerTest < ActionController::TestCase
  test "should post parse" do
    post :parse, q: "Jan 3, 2012"
    assert_response :success
    json_response = JSON.parse(@response.body)
    assert_equal 'success', json_response['status']
    assert_equal "January 03, 2012 at 12:00PM", json_response['response']
  end
end
