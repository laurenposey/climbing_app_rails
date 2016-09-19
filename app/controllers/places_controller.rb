class PlacesController < ApplicationController
  def index
    @places = Place.all
    render :index
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @user = User.find(current_user.id)
    @place = @user.places.new(place_params)
    if @place.save
      flash[:notice] = "Place successfully added!"
      redirect_to places_path
    else
      flash[:alert] = "Something went wrong"
      render :new
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    if @place.update(place_params)
      flash[:notice] = "Place successfully updated!"
      redirect_to places_path
    else
      flash[:alert] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    flash[:notice] = "Place successfully removed!"
    redirect_to places_path
  end

private
  def place_params
    params.require(:place).permit(:name, :street_address, :city, :state, :user_id)
  end
end
