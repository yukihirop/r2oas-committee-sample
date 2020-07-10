require "application_system_test_case"

class Api::V1::AccountUserRolesTest < ApplicationSystemTestCase
  setup do
    @api_v1_account_user_role = api_v1_account_user_roles(:one)
  end

  test "visiting the index" do
    visit api_v1_account_user_roles_url
    assert_selector "h1", text: "Api/V1/Account User Roles"
  end

  test "creating a Account user role" do
    visit api_v1_account_user_roles_url
    click_on "New Api/V1/Account User Role"

    fill_in "Content", with: @api_v1_account_user_role.content
    fill_in "Status", with: @api_v1_account_user_role.status
    click_on "Create Account user role"

    assert_text "Account user role was successfully created"
    click_on "Back"
  end

  test "updating a Account user role" do
    visit api_v1_account_user_roles_url
    click_on "Edit", match: :first

    fill_in "Content", with: @api_v1_account_user_role.content
    fill_in "Status", with: @api_v1_account_user_role.status
    click_on "Update Account user role"

    assert_text "Account user role was successfully updated"
    click_on "Back"
  end

  test "destroying a Account user role" do
    visit api_v1_account_user_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account user role was successfully destroyed"
  end
end
