class GroupMembershipsController < InheritedResources::Base

  private

    def group_membership_params
      params.require(:group_membership).permit()
    end
end

