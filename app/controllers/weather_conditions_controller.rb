class WeatherConditionsController < ApplicationController
  def index
    @weather_conditions = WeatherConditions.all
  end

  def new
    @weather_condition = WeatherConditions.new
  end

  def create
    @weather_condition = WeatherCondition.new(weather_condition_params)
    if @weather_condition.save
      redirect_to weather_conditions_path
    else
      render 'new'
    end
  end

  def show
    @weather_condition = WeatherCondition.find(params[:id])
  end

  private

    def weather_condition_params
      params.require(:weather_condition).permit(:zip)
    end
  end
