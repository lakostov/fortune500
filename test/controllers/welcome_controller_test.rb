require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "Home | #{@global_title}"
  end

end
