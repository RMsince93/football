class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]

  # GET /players
  
  def index
    @q = Player.ransack(params[:q])
    @q.sorts = 'position_id asc'
    @players = @q.result(distinct: true)
  end
  
  # GET /players/1
  def show
  end

  # GET /players/new
  def new
    @team = Team.find(params[:team_id])
    @player = Player.new(position_id: params[:position_id])
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.new(player_params)
  
    respond_to do |format|
      if @player.save
        #associate_to_national_team if @player.called_to_national_team?
        format.html { redirect_to player_url(@player), notice: "Player was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      #associate_to_national_team if @player.called_to_national_team?
      flash[:success] = "Player was successfully updated."  
      redirect_to @player
    else
      render :edit
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
    flash[:success] = "Player was successfully destroyed."
    redirect_to players_url
  end

  def keeper_fields
    @team = Team.last
    @player = Player.new(position_id: params[:position_id])
    render
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def player_params
    params.require(:player).permit(:name, :age, :country_id, :shirt_number, :market_value, :position_id, :height, :weight, :preferred_foot, :goals, :assists, :yellow_cards, :red_cards, :goals_suffered, :clean_sheets, :avatar, :called_to_national_team)
  end
end
