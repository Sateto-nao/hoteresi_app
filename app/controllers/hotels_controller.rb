class HotelsController < ApplicationController
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :ensure_current_user, only: [:edit, :update, :destroy]

  def index
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true).page(params[:page]).per(5).order('created_at DESC')
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.address = @hotel.prefecture_name + @hotel.address_city + @hotel.address_street
    if @hotel.save
      flash[:notice] = "ホテル情報を登録しました"
      redirect_to controller: :rooms, action: :index, hotel_id: @hotel.id
    else
      render :new
    end
  end


  def edit
  end

  def update
    @hotel.update(hotel_params)
    @hotel.address = @hotel.prefecture_name + @hotel.address_city + @hotel.address_street
    if @hotel.save
      flash[:notice] = "ホテル情報を変更しました"
      redirect_to controller: :rooms, action: :index, hotel_id: @hotel.id
    else
      render :edit
    end
  end

  def destroy
    if hotel.user_id == current_user.id
      flash[:notice] = "ホテル情報を削除しました"
      hotel.destroy
    end
  end

  private
  def hotel_params
    params.require(:hotel).permit(:hotel_name, :introduction, :tell, :email, :user_id, :postcode, :prefecture_code, :address_city, :address_street, :address_building, :hotel_img, :address, :facility, :preview, :contract, :parking)
  end


  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def ensure_current_user
    @hotel = Hotel.find(params[:id])
    if current_user.id != @hotel.user_id.to_i
      flash[:notice]="権限がありません"
      redirect_to("/")
    end
  end
end
