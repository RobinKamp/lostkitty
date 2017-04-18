class PetsController < ApplicationController

  before_action :find_pet, only:[:show, :destroy, :edit, :update]

  def index
    @pets = Pet.all
  end

  def show

  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(strong_params)
    redirect_to @pet
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def edit

  end

  def update
    @pet.update(strong_params)
    redirect_to @pet
  end

  private

  def strong_params
    params.require(:pet).permit(:name, :category, :address, :found_on)
  end

  def find_pet
    @pet = Pet.find(params[:id])
  end
end
