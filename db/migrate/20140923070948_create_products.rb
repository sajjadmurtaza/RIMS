class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :unit_price
      t.integer :quantity
      t.string :isbn
      t.string :desc
      t.integer :category_id

      t.timestamps
    end
  end
end
