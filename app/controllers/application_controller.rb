class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
  def current_diver
    @current_diver ||= Diver.find(session[:diver_id]) if session[:diver_id]
  end
  helper_method :current_diver
end
