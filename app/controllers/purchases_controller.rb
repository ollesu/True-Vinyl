class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new(purchase_params)
    @vinyl = Vinyl.find(params[:vinyl_id])
    @purchase.vinyl = @vinyl
    @purchase.buyer_id = current_user.id
    @vinyl.sold = true
    authorize @purchase
    if @purchase.save!
      redirect_to purchase_path(@purchase)
    else
      redirect_to vinyls_path
    end
    # @purchase.save
  end

  def show
    @purchase = Purchase.find(params[:id])
    authorize @purchase
  end

  private

  def purchase_params
    params.require(:purchase).permit(:name, :house_number, :street_name, :post_code, :city, :card_holder, :card_number, :expiry_date, :security_code, :buyer_id, :vinyl_id)
  end
end


