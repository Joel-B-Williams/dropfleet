module BattlegroupsHelper

	def display_battlegroup_name(battlegroup)
		battlegroup.battlegroup_type.name
	end

	def display_battlegroup_cost(battlegroup)
		battlegroup.cost
	end

	def can_add_group(battlegroup)
		battlegroup.groups.length < battlegroup.max_groups
	end

	def can_add_superheavy(battlegroup)
		Group.where(battlegroup_id: battlegroup.id).joins(:ship).where(ships:{tonnage_id: 4}).length < battlegroup.max_superheavy
	end

	def can_add_heavy(battlegroup)
		Group.where(id: battlegroup.id).joins(:ship).where(ships:{tonnage_id: 3}).length < battlegroup.max_heavy
	end

	def can_add_medium(battlegroup)
		Group.where(id: battlegroup.id).joins(:ship).where(ships:{tonnage_id: 2}).length < battlegroup.max_medium
	end

	def can_add_light(battlegroup)
		Group.where(battlegroup_id: battlegroup.id).joins(:ship).where(ships:{tonnage_id: 1}).length < battlegroup.max_light
	end

	def can_have_superheavy(battlegroup)
		battlegroup.max_superheavy > 0
	end

	def can_have_heavy(battlegroup)
		battlegroup.max_heavy > 0
	end
	
	def can_have_medium(battlegroup)
		battlegroup.max_medium > 0
	end

	def can_have_light(battlegroup)
		battlegroup.max_light > 0
	end

	def show_group_count(battlegroup)
		"#{battlegroup.groups.length}/#{battlegroup.max_groups}"
	end

	def show_superheavy_count(battlegroup)
		"#{battlegroup.groups.joins(:ship).where(ships:{tonnage_id: 4}).length}/#{battlegroup.max_superheavy}"
	end
	
	def show_heavy_count(battlegroup)
		"#{battlegroup.groups.joins(:ship).where(ships:{tonnage_id: 3}).length}/#{battlegroup.max_heavy}"
	end
	
	def show_medium_count(battlegroup)
		"#{battlegroup.groups.joins(:ship).where(ships:{tonnage_id: 2}).length}/#{battlegroup.max_medium}"
	end

	def show_light_count(battlegroup)
		"#{battlegroup.groups.joins(:ship).where(ships:{tonnage_id: 1}).length}/#{battlegroup.max_light}"
	end
end

