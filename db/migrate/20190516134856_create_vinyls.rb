class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.string :genre
      t.float :price
      t.string :artist
      t.integer :year
      t.text :description
      t.string :condition
      t.boolean :sold
      t.string :photo
      t.string :media_link
      t.timestamps
    end
  end
end
