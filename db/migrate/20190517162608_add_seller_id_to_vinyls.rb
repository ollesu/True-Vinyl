class AddSellerIdToVinyls < ActiveRecord::Migration[5.2]
  def change
    add_reference :vinyls, :seller, index: true, foreign_key: { to_table: :users }
  end
end
