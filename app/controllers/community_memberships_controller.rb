class CommunityMembershipsController < InheritedResources::Base

  private

    def community_membership_params
      params.require(:community_membership).permit()
    end
end

