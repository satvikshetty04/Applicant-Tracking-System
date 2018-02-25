class UsersController < ApplicationController
  def index
    puts "Viewing all users"
    @users = User.all
  end
  def show
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if user.save!
        format.html { redirect_to @user.index, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove
    @user = User.find(user.id)
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def sign_up_params
      params.require(:user).permit(:fname, :lname,:phone_no,:email,:password,:is_recruiter,:is_applicant)
    end

    def account_update_params
      params.require(:user).permit(:fname, :lname,:phone_no,:name,:email,:password,:current_password,:is_recruiter,:is_applicant)
    end

    def set_user

    end

    def user_params
      params.require(:user).permit(:fname, :lname,:phone_no,:name,:email,:password,:is_recruiter,:is_applicant)
    end
end
