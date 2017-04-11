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

	def show_flag_count(fleet)
		"#{fleet.battlegroups.where(battlegroup_type: 1).length}/#{fleet.max_flag}"
	end
	
	def show_vanguard_count(fleet)
			"#{fleet.battlegroups.where(battlegroup_type: 2).length}/#{fleet.max_vanguard}"
	end
	
	def show_line_count(fleet)
			"#{fleet.battlegroups.where(battlegroup_type: 3).length}/#{fleet.max_line}"
	end
	
	def show_pathfinder_count(fleet)
			"#{fleet.battlegroups.where(battlegroup_type: 4).length}/#{fleet.max_pathfinder}"
	end

	def can_add_battlegroups(fleet)
		fleet.battlegroups.length < fleet.max_battlegroups
	end



	# def show_battlegroups(fleet, bg_type)
	# 	Battlegroups.where(fleet_id: fleet.id, battlegroup_type.name: bg_type)
	# end

end
