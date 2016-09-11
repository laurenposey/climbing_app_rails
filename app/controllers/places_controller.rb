class PlacesController < ApplicationController
  def index
    @places = Place.all
    render :index
  end

  def show
    @place = Place.find(params[:id])
    render :show
  end

  def new
    @place = Place.new
    render :new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to places_path
    else
      render :new
    end
  end

private
  def place_params
    params.require(:place).permit(:name, :street_address, :city, :state)
  end
end
