class RemoveBuyerIdFromPurchases < ActiveRecord::Migration[5.2]
  def change
    remove_column :purchases, :buyer_id
  end
end
