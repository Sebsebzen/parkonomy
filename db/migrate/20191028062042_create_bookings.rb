class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :carpark, foreign_key: true
      t.date :date
      t.time :time
      t.integer :total_price

      t.timestamps
    end
  end
end
