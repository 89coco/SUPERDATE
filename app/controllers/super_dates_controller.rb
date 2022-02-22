class SuperDatesController < ApplicationController

  def create
    @super_date = SuperDate.new(set_params)
    @super = Super.find(params[:super_id])
    @super_date.super = @super
    if @super_date.save
      redirect_to super_path
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:super_date).permit(:super_id, :user_id, :date)
  end
end
