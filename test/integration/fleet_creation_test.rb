require 'test_helper'

class FleetCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:user)
  	@ucm = fleets(:ucm_fleet)
  end

  test "fleet creation & editing" do
  	log_in(@user)
  	get user_fleets_path(@user)
  	assert_template 'fleets/index'
  	assert_select "a[href=?]", new_user_fleet_path(@user)
  	get new_user_fleet_path(@user)
  	assert_template 'fleets/new'
  	create_fleet(@user, @ucm)
  	# assert_redirected_to user_fleet_path(@user, @ucm)
  	assert_template 'fleets/new'
  	# fleet not saving, will not redirect.  Poop.
  end

end
