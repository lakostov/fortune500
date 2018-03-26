require 'test_helper'

class IndustryControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get industry_path
    assert_response :success
    assert_select "title", "Industries | #{@global_title}"
  end

end
