class AddColumnApiBeerIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :api_beer_id, :string
  end
end
