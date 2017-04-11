class Fleet < ApplicationRecord

	belongs_to :user
	belongs_to :faction
	has_many :battlegroups, dependent: :destroy
	has_many :groups, through: :battlegroups
	has_many :ships, through: :groups

	validates :name, presence: true
	validates :points_level, presence: true
	validates :faction, presence: true

	def max_battlegroups
		if points_level < 1000
			4
		elsif points_level < 2000
			6
		else 
			7
		end
	end

	def min_pathfinder
		if points_level < 1000
			0
		else
			1
		end
	end
	
	def max_pathfinder	
		if points_level	< 2000	
			2
		else
			3
		end
	end
	
	def min_line
		1
	end
	
	def max_line
		if points_level < 1000
			2
		elsif points_level < 2000
			3
		else
			4
		end
	end
	
	def min_vanguard
		0
	end
	
	def max_vanguard
		if points_level < 1000
			1
		elsif points_level < 2000
			2
		else
			3
		end
	end
	
	def min_flag
		0
	end
	
	def max_flag
		if points_level < 1000
			0
		elsif points_level < 2000
			1
		else
			2
		end
	end

end
