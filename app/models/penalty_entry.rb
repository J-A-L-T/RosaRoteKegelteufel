class PenaltyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :penalty

  validates_associated :user
  validates_associated :penalty
  validates :date, presence: true
end