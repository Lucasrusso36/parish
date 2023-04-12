class FaithfulsController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_faithful, only: %i[ show edit update destroy ]

  # GET /faithfuls or /faithfuls.json
  def index
    @faithfuls = Faithful.all
  end

  # GET /faithfuls/1 or /faithfuls/1.json
  def show
  end

  # GET /faithfuls/new
  def new
    @faithful = Faithful.new
  end

  # GET /faithfuls/1/edit
  def edit
  end

  # POST /faithfuls or /faithfuls.json
  def create
    @faithful = Faithful.new(faithful_params)

    respond_to do |format|
      if @faithful.save
        format.html { redirect_to faithful_url(@faithful), notice: "Faithful was successfully created." }
        format.json { render :show, status: :created, location: @faithful }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faithful.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faithfuls/1 or /faithfuls/1.json
  def update
    respond_to do |format|
      if @faithful.update(faithful_params)
        format.html { redirect_to faithful_url(@faithful), notice: "Faithful was successfully updated." }
        format.json { render :show, status: :ok, location: @faithful }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faithful.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faithfuls/1 or /faithfuls/1.json
  def destroy
    @faithful.destroy

    respond_to do |format|
      format.html { redirect_to faithfuls_url, notice: "Faithful was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faithful
      @faithful = Faithful.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faithful_params
      params.require(:faithful).permit(:first_name, :last_name, :function, :community_id, :phone_number, :date_of_birth, :sexual_orientation_id, :relationship_id, :wedding_date, :children, :state_id, :city_id, :neighborhood_id, :street_id, :house_number, :complement)
    end
end
