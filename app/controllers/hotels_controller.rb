class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(params.require(:hotel).permit(:hotel_name, :introduction, :tell, :email, :user_id, :postcode,:prefecture_code, :address_city, :address_street, :address_building, :hotel_img))
    if @hotel.save
      flash[:notice] = "ホテル情報を登録しました"
      redirect_to controller: :hotels, action: :show, id: @hotel.id
    else
      render :new
    end
  end

  def show
    @hotel = Hotel.find(params[:id])
    @rooms = Room.all.includes(:hotels)
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update
    @hotel = Hotel.find(params[:id])
    if @hotel.update(params.require(:hotel).permit(:hotel_name, :introduction, :tell, :email, :user_id, :postcode,:prefecture_code, :address_city, :address_street, :address_building, :hotel_img))
      flash[:notice] = "ホテル情報を変更しました"
      redirect_to controller: :hotels, action: :show, id: @hotel.id
    else
      render :edit
    end
  end

  def destroy

  end
end
