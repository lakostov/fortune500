require 'test_helper'

class SectorControllerTest < ActionDispatch::IntegrationTest

  def setup
    @global_title = "Fortune 500 Analytics App"
  end

  test "should get index" do
    get sector_path
    assert_response :success
    assert_select "title", "Sectors | #{@global_title}"
  end

end
