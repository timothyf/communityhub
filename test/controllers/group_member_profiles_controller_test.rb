require 'test_helper'

class GroupMemberProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_member_profile = group_member_profiles(:one)
  end

  test "should get index" do
    get group_member_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_group_member_profile_url
    assert_response :success
  end

  test "should create group_member_profile" do
    assert_difference('GroupMemberProfile.count') do
      post group_member_profiles_url, params: { group_member_profile: {  } }
    end

    assert_redirected_to group_member_profile_url(GroupMemberProfile.last)
  end

  test "should show group_member_profile" do
    get group_member_profile_url(@group_member_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_member_profile_url(@group_member_profile)
    assert_response :success
  end

  test "should update group_member_profile" do
    patch group_member_profile_url(@group_member_profile), params: { group_member_profile: {  } }
    assert_redirected_to group_member_profile_url(@group_member_profile)
  end

  test "should destroy group_member_profile" do
    assert_difference('GroupMemberProfile.count', -1) do
      delete group_member_profile_url(@group_member_profile)
    end

    assert_redirected_to group_member_profiles_url
  end
end
