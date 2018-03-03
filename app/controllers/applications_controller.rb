class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.all
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
  end

  # GET /applications/new
  def new
    if user_signed_in? && (not current_user.is_applicant)
      respond_to do |format|
        format.html { redirect_to application_tracking_system_menu_url }
      end
    end
    @application = Application.new
  end

  # GET /applications/1/edit
  def edit
    if user_signed_in? && (current_user.id != Application.find(params[:id]).user_id &&
        (not current_user.is_admin) && (current_user.id != Job.find(Application.find(params[:id]).job_id).recruiter_id))
      respond_to do |format|
        format.html { redirect_to application_tracking_system_menu_url }
      end
    end
  end

  # POST /applications
  # POST /applications.json
  def create
    @application = Application.new(application_params)
    # @application.job_id = params[:id]
    @application.user_id = current_user.id
    respond_to do |format|
      if @application.save
        format.html { redirect_to @application, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    respond_to do |format|
      if @application.update(application_params)
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:job_id, :id, :current_company, :linkedin_url, :portfolio_url, :add_info,
                                          :gender, :race, :veteran, :disability, :resume, :application_status)
    end
end
