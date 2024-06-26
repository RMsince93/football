class ChampionshipsController < ApplicationController
  before_action :set_championship, only: %i[ show edit update destroy ]

  # GET /championships or /championships.json
  def index
    @q = Championship.ransack(params[:q])
    @championships = @q.result(distinct: true)
  end

  # GET /championships/1 or /championships/1.json
  def show
  end

  # GET /championships/new
  def new
    @championship = Championship.new
  end

  # GET /championships/1/edit
  def edit
    @championship = Championship.find(params[:id])
    @teams = Team.where(country_id: @championship.country_id)
  end

  # POST /championships or /championships.json
  def create
    @championship = Championship.new(championship_params)

    respond_to do |format|
      if @championship.save
        format.html { redirect_to championship_url(@championship), notice: "Championship was successfully created." }
        format.json { render :show, status: :created, location: @championship }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /championships/1 or /championships/1.json
  def update
    respond_to do |format|
      if @championship.update(championship_params)
        format.html { redirect_to championship_url(@championship), notice: "Championship was successfully updated." }
        format.json { render :show, status: :ok, location: @championship }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @championship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /championships/1 or /championships/1.json
  def destroy
    @championship.destroy

    respond_to do |format|
      format.html { redirect_to championships_url, notice: "Championship was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def championship_fields
    @championship = Championship.new(championship_params[:championship])
    @teams = Team.where(country_id: championship_fields_params[:country_id])
    render
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_championship
      @championship = Championship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def championship_params
      params.require(:championship).permit(:name, :country_id, :continent_id, :team_id)
    end

    def championship_fields_params
      params.permit(:country_id) # strong params para a turbo_frame
    end

end
