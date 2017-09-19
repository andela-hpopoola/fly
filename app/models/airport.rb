class Airport < ApplicationRecord
  belongs_to :location
  has_many :flights

  validates :name, presence: true, uniqueness: true
  validates :location_id, presence: true
end
