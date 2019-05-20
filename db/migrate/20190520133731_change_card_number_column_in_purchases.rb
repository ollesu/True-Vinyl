class ChangeCardNumberColumnInPurchases < ActiveRecord::Migration[5.2]
  def change
    change_column :purchases, :card_number, :string
  end
end
