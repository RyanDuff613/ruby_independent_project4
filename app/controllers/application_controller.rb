class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user!, :except => [:landing, :index] do
  #   redirect_to signin_path unless current_user && current_user.admin
  # end
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def authenticate_user!
    if !current_user
      flash[:alert] = "Restricted. Logged-in Users Only"
      redirect_to '/'
    end
  end

end
