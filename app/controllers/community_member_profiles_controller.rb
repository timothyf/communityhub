class CommunityMemberProfilesController < InheritedResources::Base

  private

    def community_member_profile_params
      params.require(:community_member_profile).permit()
    end
end

