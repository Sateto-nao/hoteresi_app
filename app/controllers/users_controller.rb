class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_current_user

  def show
    @user = User.find(params[:id])
    @hotels = Hotel.all.includes(:users)
    @rooms = Room.all.includes(:users)

    favorites = Favorite.where(user_id: current_user.id).pluck(:room_id)
    @favorites = Room.find(favorites)
  end

  private
  def ensure_current_user
    if current_user.id != params[:id].to_i
      flash[:notice]="権限がありません"
      redirect_to("root")
    end
  end
end
