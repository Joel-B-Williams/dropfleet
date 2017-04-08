module BattlegroupsHelper

	def type(battlegroup)
		battlegroup.battlegroup_type.name
	end

end
