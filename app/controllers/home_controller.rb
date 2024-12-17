class HomeController < ApplicationController
  def index
    render json: { message: 'Project_learn is working!' }
  end
end