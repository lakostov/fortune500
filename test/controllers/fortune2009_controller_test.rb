require 'test_helper'

class Fortune2009ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2009_path
    assert_response :success
    assert_select "title", "2009 | #{@global_title}"
  end

end
