class CreateCarparks < ActiveRecord::Migration[5.2]
  def change
    create_table :carparks do |t|
      t.references :user, foreign_key: true
      t.integer :average_rating
      t.float :length
      t.float :width
      t.float :height
      t.string :latitude
      t.string :longitude
      t.string :rate_hour
      t.string :photo

      t.timestamps
    end
  end
end
