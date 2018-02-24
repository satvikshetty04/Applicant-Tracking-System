class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(:user)
    respond_to do |format|
      if user.save
        format.html { redirect_to @user.index, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
