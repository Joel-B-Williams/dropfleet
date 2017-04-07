class Battlegroup < ApplicationRecord
	belongs_to :fleet
	belongs_to :battlegroup_type
	has_one :faction, through: :fleet
	has_one :user, through: :fleets
	has_many :groups, dependent: :destroy
	has_many :ships, through: :groups
end
