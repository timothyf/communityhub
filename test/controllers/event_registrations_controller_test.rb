require 'test_helper'

class EventRegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_registration = event_registrations(:one)
  end

  test "should get index" do
    get event_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_event_registration_url
    assert_response :success
  end

  test "should create event_registration" do
    assert_difference('EventRegistration.count') do
      post event_registrations_url, params: { event_registration: {  } }
    end

    assert_redirected_to event_registration_url(EventRegistration.last)
  end

  test "should show event_registration" do
    get event_registration_url(@event_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_registration_url(@event_registration)
    assert_response :success
  end

  test "should update event_registration" do
    patch event_registration_url(@event_registration), params: { event_registration: {  } }
    assert_redirected_to event_registration_url(@event_registration)
  end

  test "should destroy event_registration" do
    assert_difference('EventRegistration.count', -1) do
      delete event_registration_url(@event_registration)
    end

    assert_redirected_to event_registrations_url
  end
end
