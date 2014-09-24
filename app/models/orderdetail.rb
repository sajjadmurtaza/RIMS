class Orderdetail < ActiveRecord::Base

  belongs_to :order
  belongs_to :product

  validates :order_id, :product_id, :quantity, :unit_price, presence: true

  scope :by_week, lambda{ where('created_at > ?', Time.now-7.days)  }
  scope :by_day, lambda{ where('created_at > ?', Time.now-1.days)  }

end
