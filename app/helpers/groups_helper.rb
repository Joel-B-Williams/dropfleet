module GroupsHelper

	def display_cost(group)
		group.cost
	end

	def size_range(group)
		(@group.ship.min_group_size..@group.ship.max_group_size)
	end

	def not_min_size(group)
		group.group_size > group.ship.min_group_size
	end
	
	def not_max_size(group)
		group.group_size < group.ship.max_group_size
	end

# DESIGN QUERY - because ships are static assets and groups are user-created, should this be left as-is or should groups lead to a ship show?
	def ship_name(group)
		group.ship.name 
	end

	def size(group)
		group.group_size
	end

	def scan(group)
		group.ship.scan
	end

	def signature(group)
		group.ship.signature
	end

	def thrust(group)
		group.ship.thrust
	end

	def hull(group)
		group.ship.hull
	end

	def armor(group)
		group.ship.armor
	end

	def point_defense(group)
		group.ship.point_defense
	end

	def tonnage(group)
		group.ship.tonnage.tonnage
	end

	def special_rules(group)
		# THIS DOES NOT WORK YET NO JOIN TABLE
		group.ship.special_rules
	end

end
