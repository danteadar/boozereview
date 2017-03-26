class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @beers = Unirest.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body
    

    # angular people app

     # binding.pry
  end

  def show
    @beer = Unirest.get("http://api.brewerydb.com/v2/beer/#{api_beer_id}/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").body["data"]
    @reviews = Review.where(api_beer_id: @beer.id)
  end

  def new
    
  end

  def create
    review = Review.create(
      rating: params[:rating],
      review: params[:review],
      personal: params[:personal],
      user_id: current_user.id,
      api_beer_id: params[:api_beer_id]

    )

    redirect_to :root
  end

  def edit
    @review = Review.find_by(id: params[:id])
  end

  def update
    review = Review.find_by(id: params[:id])
    review.update(
      rating: params[:rating],
      review: params[:review],
      personal: params[:personal]
    )
    flash[:success] = "Review successfully updated!"
    redirect_to "/reviews"
  end

  def destroy
    
  end
end
