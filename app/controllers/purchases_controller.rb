class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new
    @vinyl = Vinyl.find(params[:vinyl_id])
    @purchase.vinyl = @vinyl
    @purchase.save
    redirect_to purchase_path(@purchase)
  end

  def show
    @purchase = Purchase.find(params[:id])
  end
end
