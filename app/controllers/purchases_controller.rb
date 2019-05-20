class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new
    @vinyl = Vinyl.find(params[:vinyl_id])
    @purchase.vinyl = @vinyl
    @purchase.buyer_id = current_user
    @vinyl.sold = true
    authorize @purchase
    if @purchase.save
      redirect_to purchase_path(@purchase)
    end
    @purchase.save
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  private

  def purchase_params
    params.require(:purchase).permit()
  end
end
