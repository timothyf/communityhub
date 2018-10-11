class SponsorsController < InheritedResources::Base

  private

    def sponsor_params
      params.require(:sponsor).permit()
    end
end

