require "application_system_test_case"

class MemberProfilesTest < ApplicationSystemTestCase
  setup do
    @member_profile = member_profiles(:one)
  end

  test "visiting the index" do
    visit member_profiles_url
    assert_selector "h1", text: "Member Profiles"
  end

  test "creating a Member profile" do
    visit member_profiles_url
    click_on "New Member Profile"

    click_on "Create Member profile"

    assert_text "Member profile was successfully created"
    click_on "Back"
  end

  test "updating a Member profile" do
    visit member_profiles_url
    click_on "Edit", match: :first

    click_on "Update Member profile"

    assert_text "Member profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Member profile" do
    visit member_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member profile was successfully destroyed"
  end
end
