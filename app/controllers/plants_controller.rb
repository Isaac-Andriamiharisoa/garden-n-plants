class PlantsController < ApplicationController
  def index
    plants = Plant.all
    new_plant = Plant.new

    if search_params.present?
      plants = Plant.where("name LIKE ?", "%#{search_params[:query]}%")
    else
      plants = Plant.all
    end

    render :index, locals: {plants: plants, new_plant: new_plant }
  end

  def show
    @plant = Plant.find(plant_id)
    @user = User.find(@plant.user_id)
  end

  def new
    plant = Plant.new

    render :new, locals: { plant: plant }
  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      flash[:success] = "Object successfully created"
      redirect_to plant
    else
      flash[:error] = "Something went wrong"
      render 'new', locals: {plant: plant}
    end
  end

  private
    def plant_id
      params[:id]
    end

    def search_params
      return false unless params.key?(:search)
      params.require(:search).permit(:query)
    end

    def plant_params
      params.require(:plant).permit(%i[name description price specificity user_id family ])
    end
end
