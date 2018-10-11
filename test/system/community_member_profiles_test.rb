require "application_system_test_case"

class CommunityMemberProfilesTest < ApplicationSystemTestCase
  setup do
    @community_member_profile = community_member_profiles(:one)
  end

  test "visiting the index" do
    visit community_member_profiles_url
    assert_selector "h1", text: "Community Member Profiles"
  end

  test "creating a Community member profile" do
    visit community_member_profiles_url
    click_on "New Community Member Profile"

    click_on "Create Community member profile"

    assert_text "Community member profile was successfully created"
    click_on "Back"
  end

  test "updating a Community member profile" do
    visit community_member_profiles_url
    click_on "Edit", match: :first

    click_on "Update Community member profile"

    assert_text "Community member profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Community member profile" do
    visit community_member_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community member profile was successfully destroyed"
  end
end
