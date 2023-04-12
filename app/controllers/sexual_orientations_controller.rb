class SexualOrientationsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_sexual_orientation, only: %i[ show edit update destroy ]

  # GET /sexual_orientations or /sexual_orientations.json
  def index
    @sexual_orientations = SexualOrientation.all
  end

  # GET /sexual_orientations/1 or /sexual_orientations/1.json
  def show
  end

  # GET /sexual_orientations/new
  def new
    @sexual_orientation = SexualOrientation.new
  end

  # GET /sexual_orientations/1/edit
  def edit
  end

  # POST /sexual_orientations or /sexual_orientations.json
  def create
    @sexual_orientation = SexualOrientation.new(sexual_orientation_params)

    respond_to do |format|
      if @sexual_orientation.save
        format.html { redirect_to sexual_orientation_url(@sexual_orientation), notice: "Sexual orientation was successfully created." }
        format.json { render :show, status: :created, location: @sexual_orientation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sexual_orientation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexual_orientations/1 or /sexual_orientations/1.json
  def update
    respond_to do |format|
      if @sexual_orientation.update(sexual_orientation_params)
        format.html { redirect_to sexual_orientation_url(@sexual_orientation), notice: "Sexual orientation was successfully updated." }
        format.json { render :show, status: :ok, location: @sexual_orientation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sexual_orientation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexual_orientations/1 or /sexual_orientations/1.json
  def destroy
    @sexual_orientation.destroy

    respond_to do |format|
      format.html { redirect_to sexual_orientations_url, notice: "Sexual orientation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sexual_orientation
      @sexual_orientation = SexualOrientation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sexual_orientation_params
      params.require(:sexual_orientation).permit(:name)
    end
end
