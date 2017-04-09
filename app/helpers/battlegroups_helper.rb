module BattlegroupsHelper

	def type(battlegroup)
		battlegroup.battlegroup_type.name
	end

	def display_battlegroup_cost(battlegroup)
		battlegroup.cost
	end

end
