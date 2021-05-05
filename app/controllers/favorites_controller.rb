class FavoritesController < ApplicationController

  before_action :set_room

  def create
    if @room.user_id != current_user.id
      @favorite = Favorite.create(user_id: current_user.id, room_id: @room.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, room_id: @room.id)
    @favorite.destroy
  end

  private
  def set_room
    @room = Room.find(params[:room_id])
  end

end
