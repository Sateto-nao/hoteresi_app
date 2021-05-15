class Mypage::MyhotelsController < ApplicationController

  def index
    @user = User.find(params[:id])
    @hotels = Hotel.all.includes(:users)
    @hotels = Hotel.joins(:user).find(params[:id])
  end
end
