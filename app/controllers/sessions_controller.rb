class SessionsController < ApplicationController
  def new
  end

  def create
    p params
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:id] = user.id
      flash[:notice] = "Successful Login"
    else
      flash[:notice] = "Invalid Login Info"
    end
    redirect_to user_path(user)
  end

  def destroy
    session.clear
    flash[:notice] = "Logout successful"
    redirect_to root_path
  end
end
