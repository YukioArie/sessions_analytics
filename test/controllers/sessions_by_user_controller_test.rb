require "test_helper"

class SessionsByUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessions_by_user_index_url
    assert_response :success
  end
end
