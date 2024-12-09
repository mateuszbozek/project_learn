class AutosController < ApplicationController
  def index
    autos = Auto.all
    render json: autos
  end

end