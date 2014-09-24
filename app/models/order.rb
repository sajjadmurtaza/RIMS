class Order < ActiveRecord::Base

belongs_to :customer
has_many :orderdetails

validates :customer_id, presence: true

end
