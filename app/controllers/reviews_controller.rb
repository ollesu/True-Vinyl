class ReviewsController < ApplicationController
  before_action :find_purchase, only: [:new, :create]

  def index
    @user = User.find(params[:user_id])
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.purchase = @purchase
    if review.save
      redirect_to purchase_path(@purchase)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def find_purchase
    @purchase = Purchase.find(params[:purchase_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
