class Carpark < ApplicationRecord
  belongs_to :user, required: false
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :address, presence: true
end
