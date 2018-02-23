class TripsController < ApplicationController

def index
  @trips = Trip.find(params[:id])
end




end
