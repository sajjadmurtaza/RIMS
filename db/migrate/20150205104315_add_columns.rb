class AddColumns < ActiveRecord::Migration
  def change
    add_column :products, :status, :string
    drop_table :customers
  end
end
