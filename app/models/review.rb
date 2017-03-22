class Review < ApplicationRecord
  belongs_to :user

  def beer
    return Unirest.get("http://api.brewerydb.com/v2/beer/#{api_beer_id}/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body["data"] 
  end
end
