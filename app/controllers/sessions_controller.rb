class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params['username'])
    # user exists
    if @user && @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect_to location_path(@user.location)
    # user doesn't
    else
        flash[:message] = "Username and password do not match"
        render :new
    end
  end

  def destroy
    # session.clear
    session.delete :user_id
    redirect_to locations_path
  end
end