class Product < ActiveRecord::Base

  belongs_to :category
  has_many :orderdetails
  validates :product_name, :unit_price, :quantity, :isbn, :desc, :category_id, presence: true
  validates :unit_price, :quantity, :category_id, numericality: { only_integer: true }
  validates_uniqueness_of :isbn

  scope :by_cat, lambda{ |cat| where(category_id:  cat) }
  scope :by_price, lambda{ |price| where('unit_price > ?',   price) }
  scope :by_week, lambda{ where('created_at > ?', Time.now-7.days)  }


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :avatar, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :avatar
  validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes

end
