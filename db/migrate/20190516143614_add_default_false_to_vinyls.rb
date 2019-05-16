class AddDefaultFalseToVinyls < ActiveRecord::Migration[5.2]
  def change
    change_column :vinyls, :sold, :boolean, default: false
  end
end
