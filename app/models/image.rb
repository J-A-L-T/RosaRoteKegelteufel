class Image < ActiveRecord::Base
  belongs_to :album
  has_attached_file :file, :styles => { :medium => "300x300>", :thumbnail => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end
