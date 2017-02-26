class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    review_id = params[:id]
    @review = Review.find_by(id: review_id)
  end

  def new
    
  end

  def create
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
