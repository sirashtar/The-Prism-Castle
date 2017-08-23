class SubStatsController < ApplicationController
  before_action :set_sub_stat, only: [:show, :edit, :update, :destroy]

  # GET /sub_stats
  # GET /sub_stats.json
  def index
    @sub_stats = SubStat.all
  end

  # GET /sub_stats/1
  # GET /sub_stats/1.json
  def show
  end

  # GET /sub_stats/new
  def new
    @sub_stat = SubStat.new
  end

  # GET /sub_stats/1/edit
  def edit
  end

  # POST /sub_stats
  # POST /sub_stats.json
  def create
    @sub_stat = SubStat.new(sub_stat_params)

    respond_to do |format|
      if @sub_stat.save
        format.html { redirect_to @sub_stat, notice: 'Sub stat was successfully created.' }
        format.json { render :show, status: :created, location: @sub_stat }
      else
        format.html { render :new }
        format.json { render json: @sub_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_stats/1
  # PATCH/PUT /sub_stats/1.json
  def update
    respond_to do |format|
      if @sub_stat.update(sub_stat_params)
        format.html { redirect_to @sub_stat, notice: 'Sub stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_stat }
      else
        format.html { render :edit }
        format.json { render json: @sub_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_stats/1
  # DELETE /sub_stats/1.json
  def destroy
    @sub_stat.destroy
    respond_to do |format|
      format.html { redirect_to sub_stats_url, notice: 'Sub stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_stat
      @sub_stat = SubStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_stat_params
      params.require(:sub_stat).permit(:atk, :matk, :def, :mdef, :hit, :crit, :flee, :aspd, :hp, :sp)
    end
end
