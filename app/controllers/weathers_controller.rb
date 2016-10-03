class WeathersController < ApplicationController
  def index
    @weathers = Weather.all
  end

  def new
    @weather = Weather.new
  end

  def create
    @weather = Weather.new(weather_params)
    if @weather.save
      redirect_to weathers_path
    else
      render 'new'
    end
  end

  def show
    @weather = Weather.find(params[:id])
  end

  private

    def weather_params
      params.require(:weather).permit(:zip, :state, :forcast, :city)
    end
  end
