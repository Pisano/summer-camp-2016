class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/:id
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # POST /teams
  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  # GET /teams/:id/edit
  def edit
  end

  # PATCH /teams/:id
  # PUT   /teams/:id
  def update
    if @team.update(team_params)
      redirect_to team_path(@team)
    else
      render :edit
    end
  end

  # DELETE /teams/:id
  def destroy
    @team.destroy

    redirect_to teams_path
  end

  private
    def team_params
      params.require(:team).permit(:name)
    end

    def set_team
      @team = Team.find(params[:id])
    end
end
