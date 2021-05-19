class ReservesController < ApplicationController

  def index
    @reserves = Reserve.where(user_id: current_user.id).page(params[:page]).per(5).order('created_at DESC')
    @reserves.each do |reserve|
      @room = Room.find(reserve.room_id )
    end
    @user = User.find(current_user.id)
  end

  def create
    @reserve = Reserve.new(reserve_params)
    if @reserve.save
      flash[:notice] = "問い合わせ内容を登録しました"
      redirect_to controller: :reserves, action: :index
    else
      @room = Room.find(@reserve.room_id)
      render template: 'rooms/reserve'
    end
  end

  private

  def set_reserve
    @reserve = Reserve.find(params[:id])
  end

  def reserve_params
    params.require(:reserve).permit(:user_id, :room_id, :group, :contract, :how_contract, :preview, :how_preview, :contact_id, :notes, :start_date)
  end
end
