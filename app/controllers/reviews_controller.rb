class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @beers = Unirest.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}").body

     # binding.pry
  end

  def show
    review_id = params[:id]
    @review = Review.find_by(id: review_id)
  end

  def new
    
  end

  def create
    review = Review.create(
      brewer_name: params[:brewer_name],
      beer_name: params[:beer_name],
      beer_type: params[:beer_type],
      rating: params[:rating],
      abv: params[:abv],
      review: params[:review],
      brewer_website: params[:brewer_website],
      personal: params[:personal],
      user_id: current_user.id

    )

    redirect_to :root
  end

  def edit
    @review = Review.find_by(id: params[:id])
  end

  def update
    review = Review.find_by(id: params[:id])
    review.update(
      brewer_name: params[:brewer_name],
      beer_name: params[:beer_name],
      beer_type: params[:beer_type],
      rating: params[:rating],
      abv: params[:abv],
      review: params[:review],
      brewer_website: params[:brewer_website],
      personal: params[:personal]
    )
    flash[:success] = "Review successfully updated!"
    redirect_to "/"
  end

  def destroy
    
  end
end
