class AddTotalToOrderdetail < ActiveRecord::Migration
  def change
    add_column :orderdetails, :total, :float
  end
end
