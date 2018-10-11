class RegistrationsController < InheritedResources::Base

  private

    def registration_params
      params.require(:registration).permit()
    end
end
