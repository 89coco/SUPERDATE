class SupersController < ApplicationController
  before_action :find_super, only: [:show, :destroy]

  def new
    @super = Super.new
  end

  def create
    @super = Super.new(set_params)
    @super.user = current_user
    if @super.save
      redirect_to supers_path
    else
      render :new
    end
  end

  def index
    @supers = Super.all.reverse
  end

  def show
  end

  def destroy
    @super.destroy
    redirect_to supers_path
  end

  private

  def find_super
    @super = Super.find(params[:id])
  end

  def set_params
    params.require(:super).permit(:super_name, :user_id, :super_type, :universe, :availability, :price, :strength, :romance, :humour, :kindness, :description, photos: [])
  end
end
