class Carpark < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings

  validates :minimum_booking_hour, presence: true
end
