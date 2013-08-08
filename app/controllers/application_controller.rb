class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @_current_user ||= User.find(session[:id]) if session[:id]
  end
end
