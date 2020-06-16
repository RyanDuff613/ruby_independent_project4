class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      redirect_to '/'
    else  
      flash[:alert] = "There was a problem signing in. Try again or register as admin before signing in"
      redirect_to signin_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've signed out"
    redirect_to '/'
  end

end