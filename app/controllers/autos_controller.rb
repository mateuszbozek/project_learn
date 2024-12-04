class AutosController < ApplicationController
    before_action :authenticate_user!

  def index
    autos = Auto.all
    render json: autos
  end

end