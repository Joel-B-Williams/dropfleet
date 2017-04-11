class Battlegroup < ApplicationRecord
	belongs_to :fleet
	belongs_to :battlegroup_type
	has_one :faction, through: :fleet
	has_one :user, through: :fleets
	has_many :groups, dependent: :destroy
	has_many :ships, through: :groups

	validate :can_be_added

	def can_be_added
		if fleet.battlegroups.length > fleet.max_battlegroups
			errors.add(:battlegroups, "can not exceed #{fleet.max_battlegroups}")
		end
	end

	def max_groups
		if battlegroup_type.name == "Flag"
			2
		else
			3
		end
	end

	def max_superheavy
	end

	def min_superheavy
	end	

	def max_heavy
	end

	def min_heavy
	end

	def max_medium
	end

	def min_medium
	end

	def max_light
	end

	def min_light
	end

end
