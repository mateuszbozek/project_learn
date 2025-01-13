class AutosController < ApplicationController

  def index
    byebug
    autos = Auto.all
    render json: autos
  end

  def create
    AutoService.new(create_params).call
  end

  private

  def create_params
    params.require(:auto).permit(:name)
  end
end