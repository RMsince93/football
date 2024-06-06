class TeamsController < ApplicationController
  before_action :set_team, only: %i[ show edit update destroy ]

  # GET /teams or /teams.json
  def index
    @q = Team.ransack(params[:q])
    @teams = @q.result(distinct: true)
  end

  # GET /teams/1 or /teams/1.json
  def show
    @team = Team.find(params[:id])
    @selected_season = Season.last.id
    puts "@selected_season: #{@selected_season.inspect}"
    @players = @team.players.joins(:player_season_teams).where(player_season_teams: { season_id: @selected_season }).order(position_id: :asc, name: :asc)
    render action: :show
  end

  def season
    @team = Team.find(params[:id])
    @selected_season = Season.find_by(id: params[:season_id])&.id
    @players = @team.players.joins(:player_season_teams).where(player_season_teams: { season_id: @selected_season }).order(position_id: :asc, name: :asc)
    puts "@selected_season: #{@selected_season.inspect}"
    puts "Selected Season ID: #{params[:season_id]}"
    render action: :show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams or /teams.json
  def create
    @team = Team.new(team_params)

    if @team.save
      flash[:success] = "Team was successfully created."
      redirect_to team_url(@team)
    else
      render :new
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    if @team.update(team_params)
      flash[:success] = "Team was successfully updated."
      redirect_to team_url(@team)
    else
      render :edit
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy
    flash[:success] = "Team was successfully destroyed."
    redirect_to teams_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_params
      params.require(:team).permit(:name, :stadium, :stadium_capacity, :country_id, :trophies, :avatar)
    end
end
