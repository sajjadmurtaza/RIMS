class Category < ActiveRecord::Base

  has_many :products

  validates_uniqueness_of :category_name, :case_sensitive => false, message: 'has already taken'
  validates :category_name, presence: true

  #category=Category.all
  #category=category.where(id=1)

end
