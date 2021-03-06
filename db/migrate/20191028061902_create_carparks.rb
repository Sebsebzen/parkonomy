class CreateCarparks < ActiveRecord::Migration[5.2]
  def change
    create_table :carparks do |t|
      t.references :user, foreign_key: true
      t.integer :average_rating
      t.float :length
      t.float :width
      t.float :height
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :rate_day
      t.string :photo
      t.boolean :accessibility
      t.boolean :indoor
      t.boolean :secured

      t.timestamps
    end
  end
end
