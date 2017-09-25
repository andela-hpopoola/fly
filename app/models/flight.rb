class Flight < ApplicationRecord
  belongs_to :destination, class_name: "Location"
  belongs_to :airport
  belongs_to :airline
  has_many :bookings
  has_many :passengers, through: :bookings

  validates :destination_id, presence: true
  validates :available_seats, presence: true
  validates :airline_id, presence: true
  validates :flight_date, presence: true
  validates :airport_id, presence: true

  def self.search(search_params)
    @flights = joins(:airport).where(
      "airports.id = :leaving_from and 
      flights.destination_id = :going_to and
      flight_date >= :flight_date and 
      available_seats >= :available_seats",
      { 
        leaving_from: search_params[:leaving_from].to_i,
        going_to: search_params[:going_to].to_i,
        flight_date: search_params[:flight_date].to_datetime,
        available_seats: search_params[:no_of_passengers].to_i
      }
    );
  end

end
