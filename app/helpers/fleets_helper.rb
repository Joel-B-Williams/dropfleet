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

end
