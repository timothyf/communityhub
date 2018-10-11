require 'test_helper'

class CommunityMembershipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_membership = community_memberships(:one)
  end

  test "should get index" do
    get community_memberships_url
    assert_response :success
  end

  test "should get new" do
    get new_community_membership_url
    assert_response :success
  end

  test "should create community_membership" do
    assert_difference('CommunityMembership.count') do
      post community_memberships_url, params: { community_membership: {  } }
    end

    assert_redirected_to community_membership_url(CommunityMembership.last)
  end

  test "should show community_membership" do
    get community_membership_url(@community_membership)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_membership_url(@community_membership)
    assert_response :success
  end

  test "should update community_membership" do
    patch community_membership_url(@community_membership), params: { community_membership: {  } }
    assert_redirected_to community_membership_url(@community_membership)
  end

  test "should destroy community_membership" do
    assert_difference('CommunityMembership.count', -1) do
      delete community_membership_url(@community_membership)
    end

    assert_redirected_to community_memberships_url
  end
end
