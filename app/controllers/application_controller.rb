class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :is_authenticated?

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def is_authenticated?
    redirect_to(log_in_path) if session[:user_id].nil?
  end
end
