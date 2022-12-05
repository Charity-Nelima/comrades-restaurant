class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :image
      t.string :name
      t.string :description
      t.integer :price
      t.integer :restaurant_id
      t.string :category

      t.timestamps
    end
  end
end
