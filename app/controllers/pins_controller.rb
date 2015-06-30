class PinsController < ApplicationController
  before_action do
    @current_user = User.find_by(id: session[:current_user])
    @pins = Pin.all
  end

  def home
    @user = User.new
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:image, :notes, :link, :user_id)
    @pin.save
  end

  def show
    @pin = Pin.find_by id: params[:id]
  end
end
