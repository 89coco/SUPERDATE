class SupersController < ApplicationController
  before_action :find_super, only: [:show, :edit, :update, :destroy]

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
    if params[:filter].present?
      @supers = Super.where(super_type: params[:filter]).reverse
    else
      @supers = Super.all.reverse
    end
  end

  def show
  end

  def edit
  end

  def update
    @super.update(set_params)
    redirect_to super_path(@super)
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
