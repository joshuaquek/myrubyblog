class WaterCupsController < ApplicationController
  before_action :set_water_cup, only: [:show, :edit, :update, :destroy]

  # GET /water_cups
  # GET /water_cups.json
  def index
    @water_cups = WaterCup.all
  end

  # GET /water_cups/1
  # GET /water_cups/1.json
  def show
  end

  # GET /water_cups/new
  def new
    @water_cup = WaterCup.new
  end

  # GET /water_cups/1/edit
  def edit
  end

  # POST /water_cups
  # POST /water_cups.json
  def create
    @water_cup = WaterCup.new(water_cup_params)

    respond_to do |format|
      if @water_cup.save
        format.html { redirect_to @water_cup, notice: 'Water cup was successfully created.' }
        format.json { render :show, status: :created, location: @water_cup }
      else
        format.html { render :new }
        format.json { render json: @water_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_cups/1
  # PATCH/PUT /water_cups/1.json
  def update
    respond_to do |format|
      if @water_cup.update(water_cup_params)
        format.html { redirect_to @water_cup, notice: 'Water cup was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_cup }
      else
        format.html { render :edit }
        format.json { render json: @water_cup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_cups/1
  # DELETE /water_cups/1.json
  def destroy
    @water_cup.destroy
    respond_to do |format|
      format.html { redirect_to water_cups_url, notice: 'Water cup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_cup
      @water_cup = WaterCup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_cup_params
      params.require(:water_cup).permit(:name, :age, :condition)
    end
end
