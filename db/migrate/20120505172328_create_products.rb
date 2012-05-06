class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :mark
      t.string :model
      t.float :price
      t.text :description
      t.integer :category
      t.string :image

      t.timestamps
    end
  end
end
