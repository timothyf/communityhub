require "application_system_test_case"

class CommunityMembershipsTest < ApplicationSystemTestCase
  setup do
    @community_membership = community_memberships(:one)
  end

  test "visiting the index" do
    visit community_memberships_url
    assert_selector "h1", text: "Community Memberships"
  end

  test "creating a Community membership" do
    visit community_memberships_url
    click_on "New Community Membership"

    click_on "Create Community membership"

    assert_text "Community membership was successfully created"
    click_on "Back"
  end

  test "updating a Community membership" do
    visit community_memberships_url
    click_on "Edit", match: :first

    click_on "Update Community membership"

    assert_text "Community membership was successfully updated"
    click_on "Back"
  end

  test "destroying a Community membership" do
    visit community_memberships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Community membership was successfully destroyed"
  end
end
