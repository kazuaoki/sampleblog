class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize

  class Forbidden < StandardError; end

  private
  def authorize
    if session[:user]
      user = session[:user]
      @current_user = User.find_by_id(user.id)
      session.delete(:user) unless @current_user
    end
  end

  def login_required
    raise Forbidden unless @current_user
  end
end
