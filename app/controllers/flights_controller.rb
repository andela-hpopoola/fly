class FlightsController < ApplicationController
  def search
    @flights = Flight.search(search_params)
    p @flights
  end

  private

  def search_params
    params.permit(:leaving_from, :going_to, :flight_date, :no_of_passengers)
  end

end
