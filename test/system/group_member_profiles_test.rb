require "application_system_test_case"

class GroupMemberProfilesTest < ApplicationSystemTestCase
  setup do
    @group_member_profile = group_member_profiles(:one)
  end

  test "visiting the index" do
    visit group_member_profiles_url
    assert_selector "h1", text: "Group Member Profiles"
  end

  test "creating a Group member profile" do
    visit group_member_profiles_url
    click_on "New Group Member Profile"

    click_on "Create Group member profile"

    assert_text "Group member profile was successfully created"
    click_on "Back"
  end

  test "updating a Group member profile" do
    visit group_member_profiles_url
    click_on "Edit", match: :first

    click_on "Update Group member profile"

    assert_text "Group member profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Group member profile" do
    visit group_member_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group member profile was successfully destroyed"
  end
end
