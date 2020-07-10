require 'test_helper'

class Api::V1::AccountUserRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_account_user_role = api_v1_account_user_roles(:one)
  end

  test "should get index" do
    get api_v1_account_user_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_account_user_role_url
    assert_response :success
  end

  test "should create api_v1_account_user_role" do
    assert_difference('Api::V1::AccountUserRole.count') do
      post api_v1_account_user_roles_url, params: { api_v1_account_user_role: { content: @api_v1_account_user_role.content, status: @api_v1_account_user_role.status } }
    end

    assert_redirected_to api_v1_account_user_role_url(Api::V1::AccountUserRole.last)
  end

  test "should show api_v1_account_user_role" do
    get api_v1_account_user_role_url(@api_v1_account_user_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_account_user_role_url(@api_v1_account_user_role)
    assert_response :success
  end

  test "should update api_v1_account_user_role" do
    patch api_v1_account_user_role_url(@api_v1_account_user_role), params: { api_v1_account_user_role: { content: @api_v1_account_user_role.content, status: @api_v1_account_user_role.status } }
    assert_redirected_to api_v1_account_user_role_url(@api_v1_account_user_role)
  end

  test "should destroy api_v1_account_user_role" do
    assert_difference('Api::V1::AccountUserRole.count', -1) do
      delete api_v1_account_user_role_url(@api_v1_account_user_role)
    end

    assert_redirected_to api_v1_account_user_roles_url
  end
end
