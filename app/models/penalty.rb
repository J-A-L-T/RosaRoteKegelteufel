class Penalty < ActiveRecord::Base
	has_many :penalty_entries, :dependent => :destroy
end
