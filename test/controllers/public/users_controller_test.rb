require "test_helper"

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm_withdraw" do
    get public_users_confirm_withdraw_url
    assert_response :success
  end
end
