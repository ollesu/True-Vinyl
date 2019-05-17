class AddColumnReviewsToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :review, :text
  end
end
