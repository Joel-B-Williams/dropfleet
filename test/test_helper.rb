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
end

class ActionDispatch::IntegrationTest

	def log_in(user, password: 'password')
		post login_path, params: { sessions: { username: user.username, password: password } }
	end

	def create_fleet(user, fleet)
		post user_fleets_path(user), params: { fleet: { name: fleet.name, points_level: fleet.points_level, faction_id: fleet.faction_id, cost: fleet.cost, user_id: user.id } }
	end

end
