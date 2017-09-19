class Location < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :airports
  has_many :arriving_flights, class_name: "Flight",
                              foreign_key: "to_id"
  has_many :leaving_flights,  class_name: "Flight",
                              foreign_key: "from_id"
end
