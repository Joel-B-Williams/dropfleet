ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all


  # Add more helper methods to be used by all tests here...

  def log_in(user)
  	session[:user_id] = user.id
  end

  # REFACTOR = reduce/sum/etc
	def calc_fleet_cost(fleet)
		cost = 0
		fleet.battlegroups.each do |battlegroup|
			cost += battlegroup.cost
		end
		cost
	end

	# REFACTOR = reduce/sum/etc
	def calc_battlegroup_cost(battlegroup)
		cost = 0
		battlegroup.groups.each do |group|
			cost += group.cost
		end
		cost
	end
end

class ActionDispatch::IntegrationTest

	def log_in(user, password: 'password')
		post login_path, params: { sessions: { username: user.username, password: password } }
	end

	def create_fleet(user, fleet, faction)
		post user_fleets_path(user), params: { fleet: { name: fleet.name, points_level: fleet.points_level, faction_id: faction.id} }
	end

end
