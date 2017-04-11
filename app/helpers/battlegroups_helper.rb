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

end

