require 'test_helper'

class RestaurantsGuide2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurants_guide2_index_url
    assert_response :success
  end

end
