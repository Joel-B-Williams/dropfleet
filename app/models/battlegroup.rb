class Battlegroup < ApplicationRecord
	belongs_to :fleet
	belongs_to :battlegroup_type
	has_one :faction, through: :fleet
	has_one :user, through: :fleets
	has_many :groups, dependent: :destroy
	has_many :ships, through: :groups

	validate :can_be_added

	def can_be_added
		if fleet.battlegroups.length >= fleet.max_battlegroups
			errors.add(:battlegroups, "can not exceed #{fleet.max_battlegroups}")
		end
	end
end
