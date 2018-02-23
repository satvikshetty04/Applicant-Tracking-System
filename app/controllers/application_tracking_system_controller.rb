class ApplicationTrackingSystemController < ApplicationController
  def home
    if user_signed_in?
      if current_user.is_admin?
        respond_to do |format|
          format.html { redirect_to application_tracking_system_menu_url }
        end
      else
        respond_to do |format|
          format.html { redirect_to jobs_url }
        end
      end
    end
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:fname, :lname,:phone_no,:email,:password,:is_recruiter,:is_applicant)}
    devise_parameter_sanitizer.for(:account_update){|u| u.permit(:fname, :lname,:phone_no,:name,:email,:password,:current_password,:is_recruiter,:is_applicant)}
  end
  def help
  end
  def menu
  end
end
