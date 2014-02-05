class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.where(username: params[:username]).first
    authenticate(user: user, password: params[:password])
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end