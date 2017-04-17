require 'test_helper'

class FleetCreationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:user)
    @ucm = fleets(:ucm_fleet)
  	@ucm = fleets(:ucm_fleet)
    @ucm_faction = factions(:ucm_faction)
  end

  test "fleet creation & editing" do
  	log_in(@user)
    assert_equal @user.id, session[:user_id]
  	get user_fleets_path(@user)
  	assert_template 'fleets/index'
    assert_select "a[href=?]", user_fleet_path(@user, @ucm), count: 0
    assert_select "a[href=?]", new_user_fleet_path(@user)
    get new_user_fleet_path(@user)
    assert_template 'fleets/new'
    create_fleet(@user, @ucm, @ucm_faction)
    # assert_redirected_to user_fleet_path(@user, @ucm)
    # ^ redirecting to instance copy path?  
    follow_redirect!
    assert_template 'fleets/show'  
    get user_fleets_path(@user)
    assert_template 'fleets/index'
    # dif instance or just not viably saving for reasons?
    # assert_select "a[href=?]", user_fleet_path(@user, @ucm)

  end

end
