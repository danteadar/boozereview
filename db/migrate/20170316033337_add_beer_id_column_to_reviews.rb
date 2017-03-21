class AddBeerIdColumnToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :beer_id, :integer
  end
end
