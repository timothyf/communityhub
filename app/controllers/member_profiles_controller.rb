class MemberProfilesController < InheritedResources::Base

  private

    def member_profile_params
      params.require(:member_profile).permit()
    end
end

