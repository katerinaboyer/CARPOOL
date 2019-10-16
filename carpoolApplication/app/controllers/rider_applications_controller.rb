class RiderApplicationsController < ApplicationController
  before_action :set_rider_application, only: [:show, :edit, :update, :destroy]

  # GET /rider_applications
  # GET /rider_applications.json
  def index
    @rider_applications = RiderApplication.all
  end

  # GET /rider_applications/1
  # GET /rider_applications/1.json
  def show
  end

  # GET /rider_applications/new
  def new
    @rider_application = RiderApplication.new
  end

  # GET /rider_applications/1/edit
  def edit
  end

  # POST /rider_applications
  # POST /rider_applications.json
  def create
    @rider_application = RiderApplication.new(rider_application_params)

    respond_to do |format|
      if @rider_application.save
        format.html { redirect_to @rider_application, notice: 'Rider application was successfully created.' }
        format.json { render :show, status: :created, location: @rider_application }
      else
        format.html { render :new }
        format.json { render json: @rider_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rider_applications/1
  # PATCH/PUT /rider_applications/1.json
  def update
    respond_to do |format|
      if @rider_application.update(rider_application_params)
        format.html { redirect_to @rider_application, notice: 'Rider application was successfully updated.' }
        format.json { render :show, status: :ok, location: @rider_application }
      else
        format.html { render :edit }
        format.json { render json: @rider_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rider_applications/1
  # DELETE /rider_applications/1.json
  def destroy
    @rider_application.destroy
    respond_to do |format|
      format.html { redirect_to rider_applications_url, notice: 'Rider application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rider_application
      @rider_application = RiderApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rider_application_params
      params.require(:rider_application).permit(:Name, :Phone)
    end
end
