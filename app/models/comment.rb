class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  validates_associated :user
  validates :body, presence: true, length: { maximum: 500 }
end
