class UsersController < ApplicationController
  def show
  end

  def new
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      age: params[:age],
      user_name: params[:user_name],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    user.save
    redirect_to :root
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
