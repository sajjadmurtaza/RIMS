class AddCustomerToOrderdetail < ActiveRecord::Migration
  def change
    add_reference :orderdetails, :customer, index: true
  end
end
