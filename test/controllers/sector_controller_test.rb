require 'test_helper'

class SectorControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
    @user = users(:jack)
  end

  test "should get index when logged in" do
    log_in_as(@user)
    get sector_path
    assert_response :success
    assert_select "title", "Sectors | #{@global_title}"
  end

  test "should get login when not logged in" do
    get sector_path
    assert_not is_logged_in?
    assert_redirected_to login_url
    assert_not flash.empty?
  end

end
