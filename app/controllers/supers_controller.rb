class SupersController < ApplicationController
  before_action :find, only: [:show]

  def new
    @super = Super.new
  end

  def create
    @super = Super.new(set_params)
    # @super.super_booking = @super_booking
    if @super.save
      redirect_to supers_path
    else
      render :new
    end
  end

  def index
    @supers = Super.all
  end

  def show
  end

  private

  def find
    @super = Super.find(params[:id])
  end

  def set_params
    params.require(:super).permit(:super_name, :super_type, :universe, :availability, :price)
  end
end
