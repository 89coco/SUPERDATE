class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @supers = Super.where(user: current_user)
    @super_dates = SuperDate.where(user: current_user)
    # @super_dates = current_user.super_dates.super_id
    # if params[:filter].present?
    #   @supers = Super.where( -- current user // current.user.supers
    # else
    #   @super_dates = Super_dates.where()
    # end
  end
end
