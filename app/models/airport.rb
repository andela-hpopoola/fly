class Airport < ApplicationRecord
  belongs_to :location
  has_many :flights
  has_many :airlines, through: :flights

  validates :name, presence: true, uniqueness: true
  validates :location_id, presence: true
end
