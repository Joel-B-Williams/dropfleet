class Fleet < ApplicationRecord

	belongs_to :user
	belongs_to :faction
	has_many :battlegroups
	has_many :groups, through: :battlegroups
	has_many :ships, through: :groups

	validates :name, presence: true
	validates :points_level, presence: true
	validates :faction, presence: true
end
