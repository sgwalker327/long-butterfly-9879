class MechanicRidesController < ApplicationController

  def create
    # require 'pry'; binding.pry
    MechanicRide.create!(mechanic_id: params[:id], ride_id: params[:ride])
 

    redirect_to "/mechanics/#{params[:mechanic_id]}"
  end

end

private
  def mechanic_rides_params
    params.permit(:id, :ride)
  end