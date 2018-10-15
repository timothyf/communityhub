class EventRegistrationsController < InheritedResources::Base

  private

    def event_registration_params
      params.require(:event_registration).permit()
    end
end

