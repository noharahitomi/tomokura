class UsersController < ApplicationController
  before_action :authenticate_user!, :set_user

  def show
    @spendings = current_user.spendings
  end

  private
  
  def set_user
    @user = User.find(params[:id])
  end
end
