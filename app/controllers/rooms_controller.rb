class RoomsController < ApplicationController
  before_action :set_hotel, only: [:index, :new, :create, :show]
  before_action :set_room, only: [:show, :edit, :update, :reserve, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :reserve]
  before_action :ensure_current_user, only: [:edit, :update, :destroy]


  def index
    gon.hotel = @hotel
    @rooms = Room.where(hotel_id: @hotel.id)
    @q = @rooms.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def search
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def new
    @room = Room.new
  end

  def create
    if Room.create(room_params)
      flash[:notice] = "ルーム情報を登録しました"
      redirect_to :index
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @room.update(room_params)
      flash[:notice] = "ルーム情報を変更しました"
      redirect_to controller: :rooms, action: :show, id: @room.id
    else
      render :edit
    end
  end

  def reserve
    @reserve = Reserve.new
  end

  private
  def room_params
    params.require(:room).permit(:room_name, :introduction, :room_img, :user_id, :price, :group,:smoke, :amenity).merge(hotel_id: params[:hotel_id])
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
