class BookingsController < ApplicationController
  before_action :set_booking, only: %i(show edit update destroy)
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

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
    UserMailer.booking_confirmation(current_user).deliver_now
    redirect_to booking_path(@booking)
  end

  def show
    if @booking
      @passengers = Passenger.where(booking_id: @booking.id)
    else
      redirect_to flights_path, alert: "Booking record not found"
    end
  end

  def edit
  end

  def update
  end

  def search
    @booking = Booking.find_by_id(params[:booking_id])
    if @booking
      redirect_to booking_path(@booking.id)
    else
      redirect_to bookings_path, alert: "Booking not found for Ref. Code " + params[:booking_id]
    end
  end

  def destroy
    redirect_to bookings_path, notice: "Booking has been successfully cancelled" if @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).
      permit(:flight_id,
             :booking_id,
             :user_id,
             :price,
             passengers_attributes: %i(first_name last_name email phone _destroy))
  end

  def set_booking
    @booking = Booking.find_by_id(params[:id]) if params[:id]
  end

end 
