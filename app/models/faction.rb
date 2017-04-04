class Faction < ApplicationRecord
	has_many :ships
	has_many :fleets
end
