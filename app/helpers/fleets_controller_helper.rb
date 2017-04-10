module FleetsControllerHelper

# REFACTOR = reduce/sum/etc
	def calc_fleet_cost(fleet)
		cost = 0
		fleet.battlegroups.each do |battlegroup|
			cost += battlegroup.cost
		end
		cost
	end
	
end