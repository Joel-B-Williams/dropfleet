class Ship < ApplicationRecord

	belongs_to :faction
	belongs_to :tonnage
	has_many :special_rules
	has_many :groups
	has_many :battlegroups, through: :groups
	has_many :fleets, through: :battlegroups
	has_many :users, through: :fleets

	def group_range
		if min_group_size == max_group_size
			group_range = min_group_size 
		else
			group_range = "#{min_group_size}-#{max_group_size}"
		end
	end
	
	def dropdown_display
		"#{name} || #{cost}"
	end
end
