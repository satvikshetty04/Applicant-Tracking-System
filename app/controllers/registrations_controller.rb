class RegistrationsController < Devise::RegistrationsController

  private
    def sign_up_params
      params.require(:user).permit(:fname, :lname,:phone_no,:email,:password,:is_recruiter,:is_applicant)
    end

    def account_update_params
      params.require(:user).permit(:fname, :lname,:phone_no,:name,:email,:password,:current_password,:is_recruiter,:is_applicant,:company_id)
    end
end