class RemoveSellerIdFromVinyl < ActiveRecord::Migration[5.2]
  def change
    remove_column :vinyls, :seller_id
  end
end
