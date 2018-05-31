class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params['username'].downcase)
    # user exists
    if @user && @user.authenticate(params["password"])
        session[:user_id] = @user.id
        redirect_to @user
    # user doesn't
    else
        flash[:message] = 'Invalid email/password combination'
        render :new
    end
  end

  def destroy
    session.clear
    redirect_to users_path
  end
end

