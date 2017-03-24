class Review < ApplicationRecord
  belongs_to :user

  def beer
    return Unirest.get("http://api.brewerydb.com/v2/beer/#{api_beer_id}/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body["data"] 
  end

  def average_rating (reviews)
    sum = 0
    reviews.each do |review|
      sum += review.rating
    end
    return sum / reviews.length
  end
  
end
