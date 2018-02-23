class TripsController < ApplicationController

def index
  @trip = Trip.find(params[:id])
end 




end
