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
      password_confirmation: params[:password_confirmation],
      # avatar: params[:avatar]
    )
    user.save
    redirect_to '/login'
  end

  def edit
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      # avatar: params[:avatar]
    )
    flash[:success] = "Successfully updated!"
    redirect_to "/"
  end

  def destroy
  end

  def contact
  end
end
