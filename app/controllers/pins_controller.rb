class PinsController < ApplicationController
  before_action do
    @current_user = User.find_by(id: session[:current_user])
  end

  def home
    @user = User.new
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:image, :notes, :user_id)
    @pin.save
  end
end
