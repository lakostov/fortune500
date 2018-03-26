require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get states_path
    assert_response :success
    assert_select "title", "States | #{@global_title}"
  end

end
