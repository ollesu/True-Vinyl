  class VinylsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_vinyl, only: [:show, :edit, :destroy, :order]

    def index
      @vinyls = policy_scope(Vinyl).order(created_at: :desc)
      # add this line if you want to have a seperate index
      # for each individual user: .where(user: current_user)
      if params[:query].present?
        @vinyls = Vinyl.where("name ILIKE ?", "%#{params[:query]}%")
      else
        @vinyls = Vinyl.all
      end
    end

  def show
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

    def show
    end

    def new
      @vinyl = Vinyl.new
      authorize @vinyl
    end

    def create
      @vinyl = Vinyl.new(vinyl_params)
      @vinyl.user = current_user
      authorize @vinyl
      if @vinyl.save
        redirect_to vinyl_path(@vinyl)
      else
        render :new
      end
    end

    def edit
    end

  def order
    @purchase = Purchase.new
  end

  private
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
      authorize @vinyl
    end

    def vinyl_params
      params.require(:vinyl).permit(:name, :genre, :price, :artist, :year, :description,
        :condition, :photo, :seller_id, :media_link)
    end
end











