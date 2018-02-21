class ApplicationTrackingSystemController < ApplicationController
  def home
    if user_signed_in?
      respond_to do |format|
        format.html { redirect_to jobs_url }
      end
    end
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:name,:email,:password,:is_recruiter,:is_applicant)}
    devise_parameter_sanitizer.for(:account_update){|u| u.permit(:name,:email,:password,:current_password,:is_recruiter,:is_applicant)}
  end
  def help
  end
end
