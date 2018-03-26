require 'test_helper'

class Fortune2016ControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get fortune2016_path
    assert_response :success
    assert_select "title", "2016 | #{@global_title}"
  end

end
