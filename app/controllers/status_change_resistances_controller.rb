class StatusChangeResistancesController < ApplicationController
  before_action :set_status_change_resistance, only: [:show, :edit, :update, :destroy]

  # GET /status_change_resistances
  # GET /status_change_resistances.json
  def index
    @status_change_resistances = StatusChangeResistance.all
  end

  # GET /status_change_resistances/1
  # GET /status_change_resistances/1.json
  def show
  end

  # GET /status_change_resistances/new
  def new
    @status_change_resistance = StatusChangeResistance.new
  end

  # GET /status_change_resistances/1/edit
  def edit
  end

  # POST /status_change_resistances
  # POST /status_change_resistances.json
  def create
    @status_change_resistance = StatusChangeResistance.new(status_change_resistance_params)

    respond_to do |format|
      if @status_change_resistance.save
        format.html { redirect_to @status_change_resistance, notice: 'Status change resistance was successfully created.' }
        format.json { render :show, status: :created, location: @status_change_resistance }
      else
        format.html { render :new }
        format.json { render json: @status_change_resistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_change_resistances/1
  # PATCH/PUT /status_change_resistances/1.json
  def update
    respond_to do |format|
      if @status_change_resistance.update(status_change_resistance_params)
        format.html { redirect_to @status_change_resistance, notice: 'Status change resistance was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_change_resistance }
      else
        format.html { render :edit }
        format.json { render json: @status_change_resistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_change_resistances/1
  # DELETE /status_change_resistances/1.json
  def destroy
    @status_change_resistance.destroy
    respond_to do |format|
      format.html { redirect_to status_change_resistances_url, notice: 'Status change resistance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_change_resistance
      @status_change_resistance = StatusChangeResistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_change_resistance_params
      params.require(:status_change_resistance).permit(:stun, :poison, :silence, :bleeding, :sleep, :stone_curse, :freeze, :curse, :blind, :confusion)
    end
end
