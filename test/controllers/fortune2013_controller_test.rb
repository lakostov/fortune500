require 'test_helper'

class Fortune2013ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2013_path
    assert_response :success
    assert_select "title", "2013 | #{@global_title}"
  end

end
