class AutosController < ApplicationController

  def index
    byebug
    autos = Auto.all
    render json: autos
  end

end