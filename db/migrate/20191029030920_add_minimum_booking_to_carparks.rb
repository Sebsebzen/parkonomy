class AddMinimumBookingToCarparks < ActiveRecord::Migration[5.2]
  def change
    add_column :carparks, :minimum_booking_days, :integer
  end
end
