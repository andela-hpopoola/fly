class BookingsController < ApplicationController

  def new_booking
    if params[:flight_id]
      @flight = Flight.find(params[:flight_id])
      @booking = Booking.new
      no_of_passengers = params[:no_of_passengers].to_i
      no_of_passengers.times { @booking.passengers.build }
    else
      redirect_to index_path
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).
      permit(:flight_id,
             :user_id,
             :price,
             passengers_attributes: %i(first_name last_name email phone _destroy))
  end

end 
