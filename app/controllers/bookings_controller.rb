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
    @booking = Booking.find_by_id(params[:id]) if params[:id]
    if @booking
      @selected_flight = @booking.flight
      @passengers = Passenger.where(booking_id: @booking.id)
    else
      redirect_to flights_path, alert: "Booking record not found"
    end
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
