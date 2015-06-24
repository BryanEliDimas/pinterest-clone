class PinsController < ApplicationController
  before_action do
    @current_user = User.find_by(id: session[:current_user])
  end

  def home
    @user = User.new
  end

  def wall
    @pins = Pin.all
  end

  def new
    @new_pin = Pin.new
  end

  def create
    @new_pin = Pin.new params.require(:new_pin).permit(:image, :notes, :user_id)
  end
end
