class Album < ActiveRecord::Base
  has_many :images, :dependent => :destroy

   validates :title, presence: true, length: { maximum: 50 }
   validates :description, presence: true ,length: { maximum: 2000 }
end
