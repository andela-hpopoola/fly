class Flight < ApplicationRecord
  belongs_to :to, class_name: "Location"
  belongs_to :from, class_name: "Location"
  belongs_to :airport
  has_many :bookings
  has_many :passengers, through: :bookings

  validates :to_id, presence: true
  validates :from_id, presence: true
  validates :no_of_passengers, presence: true
  validates :flight_date, presence: true
  validates :airport_id, presence: true
end
