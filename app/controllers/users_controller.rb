class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @supers = current_user.supers
    @super_dates = current_user.super_dates
  end
end
