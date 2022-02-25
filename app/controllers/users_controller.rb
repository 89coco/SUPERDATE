class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # if params[:filter].present?
      @super_dates = SuperDate.where(user: current_user)
    # else
      @supers = Super.where(user: current_user)
    # end
  end
end
