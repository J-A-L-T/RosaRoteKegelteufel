class Topic < ActiveRecord::Base 
   has_many :comments, :dependent => :destroy
   belongs_to :user
   belongs_to :tag

   validates_associated :user
   validates_associated :tag
   validates :title, presence: true, length: { maximum: 50 }
   validates :content, presence: true ,length: { maximum: 2000 }
end