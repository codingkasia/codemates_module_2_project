class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params['username'])
    # user exists
    if @user && @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect_to users_path
    # user doesn't
    else
        flash[:message] = "Username and password do not match"
        render :new
    end
  end

  def destroy
    # session.clear
    session.delete :user_id
    redirect_to users_path
  end
end