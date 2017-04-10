class Group < ApplicationRecord

	belongs_to :battlegroup
	belongs_to :ship
	has_one :fleet, through: :battlegroup
	has_one :faction, through: :fleet
	has_one :user, through: :fleet

	# validates :group_size, numericality: { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3 }
end
