class AddColumnsToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :name, :string
    add_column :purchases, :house_number, :string
    add_column :purchases, :street_name, :string
    add_column :purchases, :post_code, :string
    add_column :purchases, :city, :string
    add_column :purchases, :card_holder, :string
    add_column :purchases, :card_number, :integer
    add_column :purchases, :expiry_date, :integer
    add_column :purchases, :security_code, :integer
  end
end
