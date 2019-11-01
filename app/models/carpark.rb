class Carpark < ApplicationRecord
  belongs_to :user, required: false
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  validates :address, presence: true
  # validates :length, :width, :height, :rate_day, presence: true
  validates :rate_day, numericality: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
