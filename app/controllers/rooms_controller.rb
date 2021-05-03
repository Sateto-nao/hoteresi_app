class RoomsController < ApplicationController
  def index
    @hotel = Hotel.find(params[:hotel_id])
    @rooms = Room.all.includes(:hotels)
  end

  def new
    @hotel = Hotel.find(params[:hotel_id])
    @room = Room.new
  end

  def create
    if Room.create(create_params)
      flash[:notice] = "ルーム情報を登録しました"
      redirect_to controller: :rooms, action: :index
    else
      render controller: :rooms, action: :new
    end
  end
  private
  def create_params
    params.require(:room).permit(:room_name, :introduction, :room_img, :user_id, :price).merge(hotel_id: params[:hotel_id])
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit

  end

  def updated
  end
end
