class HotelsController < ApplicationController
  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(params.require(:hotel).permit(:hotel_name, :introduction, :tell, :email, :user_id, :postcode,:prefecture_code, :address_city, :address_street, :address_building, :hotel_img))
    if @hotel.save
      flash[:notice] = "ホテル情報を登録しました"
      redirect_to("/hotels/#{@hotel.id}")
    else
      render :new
    end
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def edit
  end

  def updated
  end

  def destroy
  end
end
