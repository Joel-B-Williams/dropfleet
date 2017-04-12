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

	def show_battlegroup_count(fleet)
		"#{fleet.battlegroups.length}/#{fleet.max_battlegroups}"
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

	def can_add_flag(fleet)
		fleet.battlegroups.where(battlegroup_type: 1).length < fleet.max_flag
	end

	def can_add_vanguard(fleet)
		fleet.battlegroups.where(battlegroup_type: 2).length < fleet.max_vanguard
	end

	def can_add_line(fleet)
		fleet.battlegroups.where(battlegroup_type: 3).length < fleet.max_line
	end
	
	def can_add_pathfinder(fleet)
		fleet.battlegroups.where(battlegroup_type: 4).length < fleet.max_pathfinder
	end

	def can_have_flag(fleet)
		fleet.max_flag > 0
	end

	def can_have_vanguard(fleet)
		fleet.max_vanguard > 0
	end

	def can_have_line(fleet)
		fleet.max_line > 0
	end

	def can_have_pathfinder(fleet)
		fleet.max_pathfinder > 0
	end

	# def can_add_battlegroup(fleet, battlegroup_type)
	# 	fleet.battlegroups.joins(:battlegroup_types).where(name: battlegroup_type).length < fleet.max_battlegroup_type
	# end



	# def show_battlegroups(fleet, bg_type)
	# 	Battlegroups.where(fleet_id: fleet.id, battlegroup_type.name: bg_type)
	# end

end

