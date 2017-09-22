class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :airports
  has_many :leaving_flights,  class_name: "Flight",
                              foreign_key: "destination_id"
end
