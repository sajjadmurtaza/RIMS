class Category < ActiveRecord::Base

  has_many :products

  validates_uniqueness_of :category_name, :case_sensitive => false, message: 'has already taken'
  validates_format_of :category_name, :with => /[a-zA-Z]/, message: 'There should be at least one character.'
  validates :category_name, presence: true

  #category=Category.all
  #category=category.where(id=1)

end
