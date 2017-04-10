class Group < ApplicationRecord

	belongs_to :battlegroup
	belongs_to :ship
	has_one :fleet, through: :battlegroup
	has_one :faction, through: :fleet
	has_one :user, through: :fleet


	# validates :group_size, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3 }
	# validates :group_size, numericality: { :greater_than_or_equal_to => self.ship.min_group_size, :less_than_or_equal_to => self.ship.max_group_size }
	validate :group_size_above_min, :group_size_below_max

	def group_size_above_min
		if group_size < ship.min_group_size
			errors.add(:group_size, "must be greater than #{ ship.min_group_size - 1 }")
		end
	end

	def group_size_below_max
		if group_size > ship.max_group_size
			errors.add(:group_size, "must be less than #{ ship.max_group_size + 1 }")
		end
	end

end
