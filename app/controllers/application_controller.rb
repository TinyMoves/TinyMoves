class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def logged_in?
  	current_user
  end
  helper_method :logged_in?

  def check_login
  	redirect_to home_url, alert: "You need to log in to view this page." if current_user.nil?
  end
end