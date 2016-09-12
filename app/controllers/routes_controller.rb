class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def show
  end

  def new
    @place = Place.find(params[:place_id])
    @route = @place.routes.new
  end

  def edit
  end

  def create
    @place = Place.find(params[:place_id])
    @route = @place.routes.new(route_params)
    if @route.save
      flash[:notice] = "Route saved successfully!"
      redirect_to place_path(@place)
    else
      flash[:alert] = "FAIL to save"
      render :new
    end
  end

  def update
    @place = Place.find(params[:place_id])
    @route = Route.find(params[:id])
    if @route.update(route_params)
      flash[:notice] = "Update saved successfully"
      redirect_to place_path(@place)
    else
      flash[:alert] = "fail to update"
      render :edit
    end
  end

  def destroy
    @route = Route.find(params[:id])
    @place = @route.place
    if @route.destroy
      flash[:notice] = 'Route was successfully destroyed.'
      redirect_to place_path(@place)
    end
  end

  private
    def set_route
      @route = Route.find(params[:id])
      @place = @route.place
    end

    def route_params
      params.require(:route).permit( :kind, :grade, :place_id)
    end
end
