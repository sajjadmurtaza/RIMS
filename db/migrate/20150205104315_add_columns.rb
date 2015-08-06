class AddColumns < ActiveRecord::Migration
  def change
    add_column :products, :status, :string
  end
end
