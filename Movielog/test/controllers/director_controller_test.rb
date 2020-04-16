require 'test_helper'

class DirectorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get director_index_url
    assert_response :success
  end

end
