
class SearchController < ApplicationController
  before_action :set_route, only: [:index]

def index
  @places = Places.all
  if params[:search]
    // use whatever is the search field here
    @places = Places.search(params[:search]).order("created_at DESC")
  else
    @places = Places.all.order('created_at DESC')
  end
end
