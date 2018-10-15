require "application_system_test_case"

class EventRegistrationsTest < ApplicationSystemTestCase
  setup do
    @event_registration = event_registrations(:one)
  end

  test "visiting the index" do
    visit event_registrations_url
    assert_selector "h1", text: "Event Registrations"
  end

  test "creating a Event registration" do
    visit event_registrations_url
    click_on "New Event Registration"

    click_on "Create Event registration"

    assert_text "Event registration was successfully created"
    click_on "Back"
  end

  test "updating a Event registration" do
    visit event_registrations_url
    click_on "Edit", match: :first

    click_on "Update Event registration"

    assert_text "Event registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Event registration" do
    visit event_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event registration was successfully destroyed"
  end
end
