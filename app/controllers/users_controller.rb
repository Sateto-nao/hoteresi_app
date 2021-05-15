class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_current_user
  before_action :set_user
  before_action :set_hotels

  def show
    favorites = Favorite.where(user_id: current_user.id).pluck(:room_id)
    @favorites = Room.find(favorites)
  end

  def myhotels
  end

  def myrooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(hotel_id: @hotel.id)
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_hotels
    @hotels = Hotel.where(id: current_user.id)
  end

  def ensure_current_user
    if current_user.id != params[:id].to_i
      flash[:notice]="権限がありません"
      redirect_to :root
    end
  end
end
