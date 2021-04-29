class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @hotels = Hotel.all.includes(:users)
  end

  def edit
     @user = User.find(params[:id])
  end
end
