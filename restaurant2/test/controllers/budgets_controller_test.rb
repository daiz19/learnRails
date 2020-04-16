require 'test_helper'

class BudgetsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get budgets_top_url
    assert_response :success
  end

  test "should get result" do
    get budgets_result_url
    assert_response :success
  end

end
