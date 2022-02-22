class SuperDatesController < ApplicationController
  before_action :find_super

  def new
    @super_date = SuperDate.new
  end

  def create
    @super_date = SuperDate.new(set_params)
    @super_date.super = @super
    if @super_date.save
      redirect_to super_path
    else
      render :new
    end
  end

  private

  def find_super
    @super = Super.find(params[:super_id])
  end

  def set_params
    params.require(:super_date).permit(:super_id, :user_id, :date)
  end
end
