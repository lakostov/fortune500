require 'test_helper'

class Fortune2014ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2014_path
    assert_response :success
    assert_select "title", "2014 | #{@global_title}"
  end

end
