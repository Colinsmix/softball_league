class Api::V1::TeamsController < ApplicationController
  before_action :set_team, only: [:show, :update, :destroy]

  # GET /teams
  def index
    render json: Team.all
  end

  # GET /teams/1
  def show
    render json: @team
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      render json: @team, status: :created, location: [:api, :v1, @team]
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1
  def update
    if @team.update(team_params)
      render json: @team, status: :ok, location: [:api, :v1, @team]
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def team_params
    params.require(:team).permit(:nickname, :location)
  end
end
