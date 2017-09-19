class Passenger < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :flights, through: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :dob, presence: true
  validates :phone, presence: true
  validates :user_id, presence: true
end
