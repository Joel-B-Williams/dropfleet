module FleetsHelper

	def show_faction(fleet)
		fleet.faction.name 
	end

	def show_name(fleet)
		fleet.name
	end

	def show_points(fleet)
		"#{fleet.cost} | #{fleet.points_level}"
	end

	# def show_battlegroups(fleet, bg_type)
	# 	Battlegroups.where(fleet_id: fleet.id, battlegroup_type.name: bg_type)
	# end

end
