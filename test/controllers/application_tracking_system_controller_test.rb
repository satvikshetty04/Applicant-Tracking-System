require 'test_helper'

class ApplicationTrackingSystemControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get application_tracking_system_home_url
    assert_response :success
  end

  test "should get help" do
    get application_tracking_system_help_url
    assert_response :success
  end

end
