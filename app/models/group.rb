class Group < ApplicationRecord

	has_one :ship
	belongs_to :battlegroup

end
