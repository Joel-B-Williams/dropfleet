module GroupsControllerHelper

	def calc_group_cost(group)
		group.ship.cost * group.group_size
	end

	def starting_size(group)
		group.ship.min_group_size
	end
	
end
