class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]

  # GET /players
  
  def index
    @q = Player.ransack(params[:q])
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
        format.html { redirect_to player_url(@player), notice: "Player was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
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
    # @positions = Position.where(id: 1)
    # respond_to do |format|
    #   format.html { render turbo_stream: turbo_stream.append("keeper_fields_frame", partial: "keeper_fields", locals: { form: @form }) }
    # end
    # render action: :new
    # params[:team_id] = 1
    # new
    # render action: :new
    
    @team = Team.last
    @player = Player.new(position_id: params[:position_id])
    render action: :new
  end
  
  

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def player_params
    params.require(:player).permit(:name, :age, :country_id, :shirt_number, :market_value, :position_id, :height, :weight, :preferred_foot, :goals, :assists, :yellow_cards, :red_cards, :goals_suffered, :clean_sheets, :avatar)
  end
  
end
