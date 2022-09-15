class MissionsController < ApplicationController
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.save
    redirect_to mission_path(@mission)
  end

  def edit
    @mission = Mission.find(params[:id])
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
    redirect_to mission_path(@mission)
  end

  private

  def mission_params
    params.require(:mission).permit(:mission_type, :date, :price)
  end
end
