class GroupMemberProfilesController < InheritedResources::Base

  private

    def group_member_profile_params
      params.require(:group_member_profile).permit()
    end
end

