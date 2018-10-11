require 'test_helper'

class CommunityMemberProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_member_profile = community_member_profiles(:one)
  end

  test "should get index" do
    get community_member_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_community_member_profile_url
    assert_response :success
  end

  test "should create community_member_profile" do
    assert_difference('CommunityMemberProfile.count') do
      post community_member_profiles_url, params: { community_member_profile: {  } }
    end

    assert_redirected_to community_member_profile_url(CommunityMemberProfile.last)
  end

  test "should show community_member_profile" do
    get community_member_profile_url(@community_member_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_member_profile_url(@community_member_profile)
    assert_response :success
  end

  test "should update community_member_profile" do
    patch community_member_profile_url(@community_member_profile), params: { community_member_profile: {  } }
    assert_redirected_to community_member_profile_url(@community_member_profile)
  end

  test "should destroy community_member_profile" do
    assert_difference('CommunityMemberProfile.count', -1) do
      delete community_member_profile_url(@community_member_profile)
    end

    assert_redirected_to community_member_profiles_url
  end
end
