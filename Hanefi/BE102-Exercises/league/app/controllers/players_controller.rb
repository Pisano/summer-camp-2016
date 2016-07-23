class PlayersController < ApplicationController
  before_action :find_team, except: [:indexAll]
  # GET /teams/:team_id/players
  def index
    @players = @team.players
  end

  # GET /players
  def indexAll
    @players = Player.all
  end

  # GET /teams/:team_id/players/new
  def new
    @player = Player.new
  end

  # POST /teams/:team_id/players
  def create
    @player = @team.players.build(player_params)

    if @player.save
      redirect_to team_players_path(@team)
    else
      render :new
    end
  end

  private
    def find_team
      @team = Team.find(params[:team_id])
    end

    def player_params
      params.require(:player).permit(:name, :surname)
    end
end
