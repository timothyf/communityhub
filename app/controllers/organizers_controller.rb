class OrganizersController < InheritedResources::Base

  private

    def organizer_params
      params.require(:organizer).permit()
    end
end

