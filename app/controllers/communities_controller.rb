class CommunitiesController < InheritedResources::Base

  private

    def community_params
      params.require(:community).permit()
    end
end

