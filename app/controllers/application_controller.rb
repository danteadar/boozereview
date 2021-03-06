class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  helper_method :current_user, :is_admin

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def is_admin?
    current_user && current_user.admin
  end

  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to '/' 
    end
  end

end
