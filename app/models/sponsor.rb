class Sponsor < ActiveRecord::Base
  has_attached_file :avatar, styles: { xtralarge: "940x323>" ,medium: "250x110>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  default_scope { order('created_at DESC') }
end
