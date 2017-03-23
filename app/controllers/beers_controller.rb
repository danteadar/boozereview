class BeersController < ApplicationController
  def index
  end

  def new
  end

  def create
    beer = Beer.create(
      name: params[:name],
      description: params[:description],
      abv: params[:abv],
      style: params[:style],
      glass: params[:glass],
      brewery: params[:brewery],
      brewery_url: params[:brewery_url],
      ibu: params[:ibu],
      api_beer_id: params[:api_beer_id]
      )
  end

  def show

    # @beer = Unirest call to find beer
    # @reviews = Review.where(beer_name: @beer.name)
    # @average_rating = @review.avergae_rating

    # def average_rating (reviews)
    #  sum = 0
      # reviews.each do |review|
      # 
      #  sum += review.rating
      # end
      # sum.average

    #end

  end
end
