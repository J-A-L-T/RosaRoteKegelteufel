class Penalty < ActiveRecord::Base
	has_many :penalty_entries, :dependent => :destroy

	validates :name, presence: true
	validates :price, :presence => true, :numericality => true
end
