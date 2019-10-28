class Carpark < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :bookings

  validates :minimum_booking_days, presence: true
end
