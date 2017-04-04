class Group < ApplicationRecord

	belongs_to :battlegroup
	belongs_to :ship
	has_one :fleet, through: :battlegroup
	has_one :faction, through: :fleet
	has_one :user, through: :fleet

end
