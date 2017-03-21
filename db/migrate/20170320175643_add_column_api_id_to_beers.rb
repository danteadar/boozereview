class AddColumnApiIdToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :api_beer_id, :string
  end
end
