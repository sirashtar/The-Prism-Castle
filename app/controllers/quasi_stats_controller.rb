class QuasiStatsController < ApplicationController
  before_action :set_quasi_stat, only: [:show, :edit, :update, :destroy]

  # GET /quasi_stats
  # GET /quasi_stats.json
  def index
    @quasi_stats = QuasiStat.all
  end

  # GET /quasi_stats/1
  # GET /quasi_stats/1.json
  def show
  end

  # GET /quasi_stats/new
  def new
    @quasi_stat = QuasiStat.new
  end

  # GET /quasi_stats/1/edit
  def edit
  end

  # POST /quasi_stats
  # POST /quasi_stats.json
  def create
    @quasi_stat = QuasiStat.new(quasi_stat_params)

    respond_to do |format|
      if @quasi_stat.save
        format.html { redirect_to @quasi_stat, notice: 'Quasi stat was successfully created.' }
        format.json { render :show, status: :created, location: @quasi_stat }
      else
        format.html { render :new }
        format.json { render json: @quasi_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quasi_stats/1
  # PATCH/PUT /quasi_stats/1.json
  def update
    respond_to do |format|
      if @quasi_stat.update(quasi_stat_params)
        format.html { redirect_to @quasi_stat, notice: 'Quasi stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @quasi_stat }
      else
        format.html { render :edit }
        format.json { render json: @quasi_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quasi_stats/1
  # DELETE /quasi_stats/1.json
  def destroy
    @quasi_stat.destroy
    respond_to do |format|
      format.html { redirect_to quasi_stats_url, notice: 'Quasi stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quasi_stat
      @quasi_stat = QuasiStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quasi_stat_params
      params.require(:quasi_stat).permit(:atk_range, :cast_time, :weight_limit, :energy)
    end
end
