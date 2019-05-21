class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_vinyl, only: [:show, :edit, :destroy, :update, :order]

  def index
    @vinyls = policy_scope(Vinyl).filter(params.slice(:genre, :artist, :named, :min_price, :max_price))

  end

  def show
    @user_vinyls = Vinyl.where(sold: false).where(seller: @vinyl.seller)
  end

  def new
    @vinyl = Vinyl.new
    authorize @vinyl
  end

  def create
    @vinyl = Vinyl.new(vinyl_params)
    @vinyl.seller = current_user
    authorize @vinyl
    if @vinyl.save
      redirect_to vinyl_path(@vinyl)
    else
      render :new
    end
  end

  def edit
    authorize @vinyl
  end

  def order
    # @purchase = Purchase.new
    @purchase = Purchase.new
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
    redirect_to vinyls_user_path(current_user)
  end

  private

  def find_vinyl
    @vinyl = Vinyl.find(params[:id])
    authorize @vinyl
  end

  def vinyl_params
    params.require(:vinyl).permit(:name, :genre, :price, :artist, :year, :description,
      :condition, :photo, :seller_id, :media_link)
  end
end
