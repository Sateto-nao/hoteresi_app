class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @hotels = Hotel.all.includes(:users)
    @rooms = Room.all.includes(:users)

    favorites = Favorite.where(user_id: current_user.id).pluck(:room_id)
    @favorites = Room.find(favorites)
  end

end
