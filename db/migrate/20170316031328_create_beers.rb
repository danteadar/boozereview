class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.decimal :abv, precision: 4, scale: 2
      t.string :style
      t.string :glass
      t.string :brewery
      t.string :brewery_url
      t.integer :ibu

      t.timestamps
    end
  end
end
