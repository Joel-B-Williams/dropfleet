module BattlegroupsControllerHelper

# REFACTOR = reduce/sum/etc
	def calc_battlegroup_cost(battlegroup)
		cost = 0
		battlegroup.groups.each do |group|
			cost += group.cost
		end
		cost
	end

end