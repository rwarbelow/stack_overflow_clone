class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:id] = user.id
      flash[:notice] = "Successful Login"
      redirect_to user_path(user)
    else
      flash[:notice] = "Invalid Login Info"
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Logout successful"
    redirect_to root_path
  end
end
