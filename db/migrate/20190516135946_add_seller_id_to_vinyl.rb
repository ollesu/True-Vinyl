class AddSellerIdToVinyl < ActiveRecord::Migration[5.2]
  def change
    add_column :vinyls, :seller_id, :integer
  end
end
