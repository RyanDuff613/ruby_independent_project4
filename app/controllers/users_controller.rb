class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You are now signed in"
      session[:user_id] = @user.id 
      redirect_to '/'
    else  
      flash[:alert] = "Signup failed. Please try again. If you are already an Admin try Sign In instead."
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
end