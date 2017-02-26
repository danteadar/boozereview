class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :brewer_name
      t.string :beer_name
      t.string :beer_type
      t.decimal :rating, precision: 3, scale: 2
      t.decimal :abv, precision: 4, scale: 2
      t.text :review
      t.string :brewer_website
      t.boolean :private

      t.timestamps
    end
  end
end
