class SuperDatesController < ApplicationController
  before_action :find_super, only: %i[new create]

  def index
    @super_dates = SuperDate.where(user: current_user)
  end

  def new
    @super_date = SuperDate.new
  end

  def create
    # @super = Super.find(params[:super_id])
    @super_date = SuperDate.new(set_params)
    @super_date.user = current_user
    @super_date.super = @super
    @super_date.total = (@super_date.hours * @super.price)
    if @super_date.save
      redirect_to date_confirmation_path(@super_date)
    else
      render :new
    end
  end

  def confirmation
    @super_date = SuperDate.find(params[:id])
  end

  private

  def find_super
    @super = Super.find(params[:super_id])
  end

  def set_params
    params.require(:super_date).permit(:date, :hours, :comment, :total)
  end
end
