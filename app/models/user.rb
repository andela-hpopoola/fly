class User < ApplicationRecord
  has_many :bookings
  has_many :flights, through: :bookings
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
