class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(plant_id)
    @user = User.find(@plant.user_id)
  end

  private
    def plant_id
      params[:id]
    end
end
