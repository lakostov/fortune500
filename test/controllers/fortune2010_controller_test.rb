require 'test_helper'

class Fortune2010ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2010_path
    assert_response :success
    assert_select "title", "2010 | #{@global_title}"
  end

end
