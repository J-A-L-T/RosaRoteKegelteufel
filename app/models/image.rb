  require "open-uri"

class Image < ActiveRecord::Base
  belongs_to :album
  has_attached_file :file, :styles => {:large => "800x800>", :medium => "300x300>", :thumbnail => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
  validates_attachment :file, presence: true
  validates_associated :album
  validates :title, presence: true, length: { maximum: 50 }
end
