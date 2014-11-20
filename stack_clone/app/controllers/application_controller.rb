class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  private
  def current_user
  	@current_user ||=	User.find(session[:user_id]) if session[:user_id] #||= means that, if @current_user is nil, then only i assign a value, else dont change any value
  end

  def authorize
  	redirect_to login_ul, alert: "Not authorized" if current_user.nil?
  	#before_filter :authorize, only: [:methodename1,:methodename2]
  end
end
