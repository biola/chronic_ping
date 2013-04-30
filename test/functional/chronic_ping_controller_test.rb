require 'test_helper'

class ChronicPingControllerTest < ActionController::TestCase
  test "should post parse" do
    post :parse, q: "Jan 3, 2012"
    json_response = JSON.parse(@response.body)

    assert_response :success
    assert_equal 'success', json_response['status']
    assert_equal "January 03, 2012 at 12:00PM", json_response['response']
  end

  test "should use predefined formats" do
    post :parse, q: 'April 30 2013', f: 'date'
    json_response = JSON.parse(@response.body)

    assert_response :success
    assert_equal 'success', json_response['status']
    assert_equal "April 30, 2013", json_response['response']
  end

  test "should use custom formats" do
    post :parse, q: 'April 30 2013', f: '%Y'
    json_response = JSON.parse(@response.body)

    assert_response :success
    assert_equal 'success', json_response['status']
    assert_equal "2013", json_response['response']
  end
end
