require 'test_helper'

class SponsorshipLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsorship_level = sponsorship_levels(:one)
  end

  test "should get index" do
    get sponsorship_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsorship_level_url
    assert_response :success
  end

  test "should create sponsorship_level" do
    assert_difference('SponsorshipLevel.count') do
      post sponsorship_levels_url, params: { sponsorship_level: {  } }
    end

    assert_redirected_to sponsorship_level_url(SponsorshipLevel.last)
  end

  test "should show sponsorship_level" do
    get sponsorship_level_url(@sponsorship_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsorship_level_url(@sponsorship_level)
    assert_response :success
  end

  test "should update sponsorship_level" do
    patch sponsorship_level_url(@sponsorship_level), params: { sponsorship_level: {  } }
    assert_redirected_to sponsorship_level_url(@sponsorship_level)
  end

  test "should destroy sponsorship_level" do
    assert_difference('SponsorshipLevel.count', -1) do
      delete sponsorship_level_url(@sponsorship_level)
    end

    assert_redirected_to sponsorship_levels_url
  end
end
