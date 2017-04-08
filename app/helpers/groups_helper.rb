module GroupsHelper

	def cost(group)
		group.ship.cost * group.group_size
	end

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
