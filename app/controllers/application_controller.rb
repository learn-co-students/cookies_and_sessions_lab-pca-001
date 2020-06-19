class ApplicationController < ActionController::Base
  helper_method :cart
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    # Note: Do NOT `raise cart.inspect` here, or you'll get an infinite loop!
    session[:cart] ||= []
  end
end
