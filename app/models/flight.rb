class Flight < ApplicationRecord
  belongs_to :destination, class_name: "Location"
  belongs_to :airport
  belongs_to :airline
  has_many :bookings
  has_many :passengers, through: :bookings

  validates :destination_id, presence: true
  validates :airline_id, presence: true
  validates :flight_date, presence: true
  validates :airport_id, presence: true
end
