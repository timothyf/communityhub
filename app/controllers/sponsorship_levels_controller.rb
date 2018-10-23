class SponsorshipLevelsController < InheritedResources::Base

  private

    def sponsorship_level_params
      params.require(:sponsorship_level).permit()
    end
end

