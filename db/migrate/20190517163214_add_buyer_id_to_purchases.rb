class AddBuyerIdToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_reference :purchases, :buyer, index: true, foreign_key: { to_table: :users }
  end
end
