class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_current_user
  before_action :set_user
  before_action :set_hotels

  def show
  end

  def myhotels
    @hotels = Hotel.page(params[:page]).per(5).order('created_at DESC')
  end

  def myrooms
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.where(hotel_id: @hotel.id).page(params[:page]).per(5).order('created_at DESC')
  end

  def favorites
    favorites = Favorite.where(user_id: current_user.id).order(created_at: :desc).pluck(:room_id)
    likerooms = Room.find(favorites)
    @favorites = Kaminari.paginate_array(likerooms).page(params[:page]).per(5)
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
