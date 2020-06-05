class SessionsController < ApplicationController
  
  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      redirect_to '/'
    else  
      flash[:alert] = "There was a problem signing in. Try again"
      redirect_to_signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have signed out"
    redirect_to '/'
  end

end