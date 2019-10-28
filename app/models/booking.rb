class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :carpark

  has_many :reviews, dependent: :destroy
end
