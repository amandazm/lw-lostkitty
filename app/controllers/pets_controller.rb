class PetsController < ApplicationController
  before_action(:set_pet, only: [:show, :edit, :update, :destroy, :found, :unfound])

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  # redirect after finished processing
  def create
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def edit
  end

  # redirect after finished processing
  def update
    @pet.update(pet_params)
    @pet.save
    redirect_to pets_path
  end

  # redirect after finished processing
  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  def found
    @pet.is_found
    @pet.save

    redirect_to pets_path
  end

  def unfound
    @pet.is_unfound
    @pet.save

    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :found, :kind, :phone)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end













