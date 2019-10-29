class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :carpark, foreign_key: true
      t.date :start_date_time
      t.date :end_date_time
      t.integer :total_price

      t.timestamps
    end
  end
end
