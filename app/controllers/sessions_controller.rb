class SessionsController < ApplicationController

  def create
    user = User.where(username: params[:username]).first
    authenticate(user: user, password: params[:password])
    redirect_to user_path(user)
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end