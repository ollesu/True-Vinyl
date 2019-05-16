class VinylsController < ApplicationController

  before_action :find_vinyl, only: [:show, :create, :edit, :destroy]

  def index
    @vinyls = Vinyl.all
  end

  def show

  end

  def new
    @vinyl = Vinyl.new
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    # seller_id = current.user
    if @vinyl.save
      redirect_to vinyl_path(@vinyl)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vinyl.update(vinyl_params)
    if @vinyl.save
      redirect_to vinyl_path(@vinyl)
    else
      render :edit
    end
  end

  def destroy
    @vinyl.destroy
  end

  private

  def find_vinyl
    @vinyl = Vinyl.find(params[:id])
  end

  def vinyl_params
    params.require(:vinyl).permit(:name, :genre, :price, :artist, :year, :description,
      :condition, :photo, :seller_id)
  end
end











