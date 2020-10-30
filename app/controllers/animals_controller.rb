class AnimalsController < ApplicationController

  def index
    @animals = animal.all
    json_response(@animals)
  end

  def show
    @animal = animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = animal.create(animal_params)
    json_response(@animal)
  end

  def update
    @animal = animal.find(params[:id])
    @animal.update(animal_params)
  end

  def destroy
    @animal = animal.find(params[:id])
    @animal.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def animal_params
    params.permit(:author, :content)
  end
end