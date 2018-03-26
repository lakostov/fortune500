require 'test_helper'

class Fortune2008ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2008_path
    assert_response :success
    assert_select "title", "2008 | #{@global_title}"
  end

end
