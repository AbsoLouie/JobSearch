class UsersController < ApplicationController

  def new
    @user = User.new()
  end

  def create
    user = User.create(params[:user])
    render :index
  end

end