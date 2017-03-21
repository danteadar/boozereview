class RemoveBrewerNameBeerNameBeerTypeAbvBrewerWebsiteColumnsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :brewer_name, :string
    remove_column :reviews, :beer_name, :string
    remove_column :reviews, :beer_type, :string
    remove_column :reviews, :abv, :decimal
    remove_column :reviews, :brewer_website, :string
  end
end
