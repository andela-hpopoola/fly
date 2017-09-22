class Airline < ApplicationRecord
  has_many :flights
  has_many :airports, through: :flights
  
  validates :name, presence: true, uniqueness: true
  validates :no_of_passengers, presence: true
end
