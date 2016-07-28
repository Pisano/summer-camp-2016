class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]
  def create
    @team = Team.new(permitted_team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def destroy
    @team.destroy

    redirect_to team_path()
  end

  def index
    @teams = Team.all
  end

  def show
  end

  def update
    if @team.update(permitted_team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end



  private

    def permitted_team_params
      params.require(:team).permit(:name)
    end

    def set_team()
      @team = Team.find(params[:id])
    end

end
