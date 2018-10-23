require "application_system_test_case"

class SponsorshipLevelsTest < ApplicationSystemTestCase
  setup do
    @sponsorship_level = sponsorship_levels(:one)
  end

  test "visiting the index" do
    visit sponsorship_levels_url
    assert_selector "h1", text: "Sponsorship Levels"
  end

  test "creating a Sponsorship level" do
    visit sponsorship_levels_url
    click_on "New Sponsorship Level"

    click_on "Create Sponsorship level"

    assert_text "Sponsorship level was successfully created"
    click_on "Back"
  end

  test "updating a Sponsorship level" do
    visit sponsorship_levels_url
    click_on "Edit", match: :first

    click_on "Update Sponsorship level"

    assert_text "Sponsorship level was successfully updated"
    click_on "Back"
  end

  test "destroying a Sponsorship level" do
    visit sponsorship_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sponsorship level was successfully destroyed"
  end
end
