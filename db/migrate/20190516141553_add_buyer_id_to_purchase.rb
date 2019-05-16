class AddBuyerIdToPurchase < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :buyer_id, :integer
  end
end
