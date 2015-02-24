class PenaltyEntry < ActiveRecord::Base
  belongs_to :user
  belongs_to :penalty
end
