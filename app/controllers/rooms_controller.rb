class RoomsController < ApplicationController
  before_action :set_hotel, only: [:new, :create, :show]
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # before_action :ensure_current_user, only: [:edit, :update, :destroy]


  def index
    @hotels = Hotel.all
    @rooms = Room.all
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.new
  end

  def create
    if Room.create(room_params)
      flash[:notice] = "ルーム情報を登録しました"
      redirect_to controller: :rooms, action: :index
    else
      render controller: :rooms, action: :new
    end
  end

  def show
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.find(params[:id])
  end

  def edit
  end

  def updated
    if @room.update(room_params)
      flash[:notice] = "ルーム情報を変更しました"
      redirect_to controller: :rooms, action: :index, id: @room.id
    else
      render :edit
    end
  end

  private
  def room_params
    params.require(:room).permit(:room_name, :introduction, :room_img, :user_id, :price).merge(hotel_id: params[:hotel_id])
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def set_room
    @room = Room.find(params[:id])
  end

  def ensure_current_user
    @room = Room.find(params[:id])
    if current_user.id != @room.user_id.to_i
      flash[:notice]="権限がありません"
      redirect_to("/")
    end
  end

end
