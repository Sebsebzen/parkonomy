class Carpark < ApplicationRecord
  belongs_to :user, required: false
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
