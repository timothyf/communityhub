require "application_system_test_case"

class GroupMembershipsTest < ApplicationSystemTestCase
  setup do
    @group_membership = group_memberships(:one)
  end

  test "visiting the index" do
    visit group_memberships_url
    assert_selector "h1", text: "Group Memberships"
  end

  test "creating a Group membership" do
    visit group_memberships_url
    click_on "New Group Membership"

    click_on "Create Group membership"

    assert_text "Group membership was successfully created"
    click_on "Back"
  end

  test "updating a Group membership" do
    visit group_memberships_url
    click_on "Edit", match: :first

    click_on "Update Group membership"

    assert_text "Group membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Group membership" do
    visit group_memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group membership was successfully destroyed"
  end
end
