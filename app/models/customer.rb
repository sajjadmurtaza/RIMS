class Customer < ActiveRecord::Base

  has_many :orders

  validates :name, length: {maximum: 30, minimum: 3}
  validates_format_of :name, :with => /[A-Z a-z]/, message: 'Only Characters wil be entered ... '
  validates_format_of :phone, :with => /\d{4}\-\d{7}/, message: '0300-7374757'
  validates_uniqueness_of :name, :email, :case_sensitive => false, message: 'has already taken'
  validates :name, :phone, :email, :address, presence: true



end
