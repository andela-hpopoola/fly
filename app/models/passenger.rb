class Passenger < ApplicationRecord
  belongs_to :booking, inverse_of: :passengers

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
