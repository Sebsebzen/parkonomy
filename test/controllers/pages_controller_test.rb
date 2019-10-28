require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pages_new_url
    assert_response :success
  end

  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
  end

end
