module BattlegroupsHelper

	def display_battlegroup_name(battlegroup)
		battlegroup.battlegroup_type.name
	end

	def display_battlegroup_cost(battlegroup)
		battlegroup.cost
	end

	def can_add_group(battlegroup)
		battlegroup.groups.length < battlegroup.max_groups
	end

	def can_add_superheavy(battlegroup)
		
	end

	def can_add_heavy(battlegroup)
	end

	def can_add_medium(battlegroup)
	end

	def can_add_light(battlegroup)
	end

end

