class UsersController < ApplicationController

  def create
    user = User.create(params[:user])
    render :index
  end

end