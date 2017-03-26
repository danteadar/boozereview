class Api::V1::ReviewsController < ApplicationController

  def index

    if params[:api_beer_id]
      @reviews = Review.where(api_beer_id: params[:api_beer_id])
    else
      @reviews = Review.all
    end
    render 'index.json.jbuilder'
  end
end
