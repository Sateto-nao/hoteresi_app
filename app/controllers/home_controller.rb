class HomeController < ApplicationController

  def top
    @rooms = Room.order(created_at: :desc).limit(6)
    @hotels = Hotel.order(created_at: :desc).limit(6)
  end

  def about
  end

end
