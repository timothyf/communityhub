class ApplicationController < ActionController::Base

  def authenticate_active_admin_member!
    logger.info "my first authenticator"
    authenticate_member!
    unless current_member.admin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end

end
