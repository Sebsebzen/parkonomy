class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :carpark

  has_many :reviews, dependent: :destroy

  validate :end_date_before_start_date?

  def end_date_before_start_date?
    if end_date < start_date
      errors.add :end_date, "End date must be later than start date."
    end
  end
end
