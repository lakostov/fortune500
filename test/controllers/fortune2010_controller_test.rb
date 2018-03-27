require 'test_helper'

class Fortune2010ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
    @user = users(:jack)
  end

  test "should get index when logged in" do
    log_in_as(@user)
    get fortune2010_path
    assert_response :success
    assert_select "title", "2010 | #{@global_title}"
  end

  test "should get login when not logged in" do
    get fortune2010_path
    assert_not is_logged_in?
    assert_redirected_to login_url
    assert_not flash.empty?
  end

end
