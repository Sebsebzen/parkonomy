class Review < ApplicationRecord
  belongs_to :booking

  validates :address, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  validates :rate_hour, presence: true
end
