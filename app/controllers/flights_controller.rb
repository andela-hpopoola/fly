class FlightsController < ApplicationController
  @@per_page = 6

  def search
    @flights = Flight.search(search_params).page(page).per(@@per_page)
  end

  def index
    @flights = Flight.available.page(page).per(@@per_page)
  end

  private

  def search_params
    params.permit(:leaving_from, :going_to, :flight_date, :no_of_passengers)
  end

end
