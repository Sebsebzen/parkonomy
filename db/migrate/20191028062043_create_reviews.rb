class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.references :booking, foreign_key: true
      t.string :content
      t.string :rating

      t.timestamps
    end
  end
end
