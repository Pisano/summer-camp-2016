class PlayersController < ApplicationController
  before_action :find_team, except: [:index_all_players]

  def index
    @player = @team.player
  end

  def new
    @player = Player.new
  end

  def create
    @player = @team.player.build(player_params)
    if @player.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def index_all_players
    @all_players = Player.all
  end

  private

  def find_team
    @team = Team.find(params[:team_id])
  end

  def player_params
    params.require(:player).permit(:name)
  end
end
