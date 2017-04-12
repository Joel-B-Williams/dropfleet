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
		if bg_name == 'Flag'
			2
		else
			0
		end 
	end

	def min_superheavy
		if bg_name == 'Flag'
			1
		else
			0
		end
	end	

	def max_heavy
		if bg_name == 'Vanguard'
			2
		else
			0
		end
	end

	def min_heavy
		if bg_name == 'Vanguard'
			1
		else
			0
		end
	end

	def max_medium
		if bg_name == 'Flag'
			0
		elsif bg_name == 'Line'
			3
		else
			1
		end
	end

	def min_medium
		if bg_name == 'Line'
			1
		else
			0
		end
	end

	def max_light
		if bg_name == 'Pathfinder'
			3
		elsif bg_name == 'Line'
			2
		else
			1
		end
	end

	def min_light
		if bg_name == 'Pathfinder'
			1
		else
			0
		end
	end

	private

		def bg_name
			battlegroup_type.name
		end
end
