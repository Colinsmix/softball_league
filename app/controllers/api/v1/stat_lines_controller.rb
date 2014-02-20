class Api::V1::StatLinesController < ApplicationController
  before_action :set_stat_line, only: [:show, :update, :destroy]

  # GET /stat_lines
  def index
    render json: StatLine.all
  end

  # GET /stat_lines/1
  def show
    render json: @stat_line
  end

  # POST /stat_lines
  def create
    @stat_line = StatLine.new(stat_line_params)

    if @stat_line.save
      render json: @stat_line, status: :created, location: [:api, :v1, @stat_line]
    else
      render json: @stat_line.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stat_lines/1
  def update
    if @stat_line.update(stat_line_params)
      render json: @stat_line, status: :ok, location: [:api, :v1, @stat_line]
    else
      render json: @stat_line.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stat_lines/1
  def destroy
    @stat_line.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_stat_line
    @stat_line = StatLine.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def stat_line_params
    params.require(:stat_line).permit(:player_id, :game_id, :ab, :1b, :2b, :3b, :hr, :bb, :hbp, :k, :sac, :rbi, :sb)
  end
end
