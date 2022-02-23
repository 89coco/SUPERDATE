class SupersController < ApplicationController
  before_action :find_super, only: [:show]

  def new
    @super = Super.new
  end

  def create
    @super = Super.new(set_params)
    @super.user = current_user
    if @super.save
      p @super
      p @super.photos
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

  def find_super
    @super = Super.find(params[:id])
  end

  def set_params
    params.require(:super).permit(:super_name, :user_id, :super_type, :universe, :availability, :price, :strength, :romance, :humour, :kindness, :description, photos: [])
  end
end
