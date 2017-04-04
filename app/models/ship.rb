class Ship < ApplicationRecord

	belongs_to :faction
	belongs_to :tonnage
	has_many :special_rules
	has_many :groups
	has_many :battlegroups, through: :groups
	has_many :fleets, through: :battlegroups
	has_many :users, through: :fleets

end
