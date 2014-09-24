class Product < ActiveRecord::Base

  belongs_to :category
  has_many :orderdetails
  validates :product_name, :unit_price, :quantity, :isbn, :desc, :category_id, presence: true
  validates :unit_price, :quantity, :category_id, numericality: { only_integer: true }
  validates_uniqueness_of :isbn

  scope :by_cat, lambda{ |cat| where(category_id:  cat) }
  scope :by_price, lambda{ |price| where('unit_price > ?',   price) }
  scope :by_week, lambda{ where('created_at = ?', Time.now-7.days)  }

end
