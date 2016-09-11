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

  def edit
    @place = Place.find(params[:id])
    render :edit
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
      redirect_to places_path
    else
      render :edit
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end

private
  def place_params
    params.require(:place).permit(:name, :street_address, :city, :state)
  end
end
