class PinsController < ApplicationController
  before_action do
    @current_user = User.find_by(id: session[:current_user])
  end

  def home
    @user = User.new
  end

  def wall
  end
end
