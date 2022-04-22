class ApplicationController < ActionController::Base
  helper_method :current_customer, :logged_in?

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end

  def logged_in?
    !!current_customer
  end

  def require_customer
    unless logged_in?
      flash[:alert] = 'You must be logged in to perform that action'
      redirect_to login_path
    end
  end
end
