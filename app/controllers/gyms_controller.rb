class GymsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @gyms = Gym.all
  end

  def show
    @gym = Gym.find(params[:id])
  end
end
