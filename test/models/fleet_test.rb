require 'test_helper'

class FleetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@ucm = fleets(:ucm_fleet)
  	@ucm1000 = fleets(:ucm_1000)
  	@ucm2000 = fleets(:ucm_2000)
    @line = battlegroups(:line)
    @vanguard = battlegroups(:vanguard)
    @toulon = ships(:toulon)
    @toulons = groups(:toulons)
    @seattle = ships(:seattle)
    @seattle_group = groups(:one_seattle)
  end

  # test "is valid with name, faction_id, and points_level" do 
  # 	assert @ucm.valid?
  # end

  test "fleet has appropriate Battlegroup options" do
  	assert_equal 4, @ucm.max_battlegroups
  	assert_equal 0, @ucm.min_pathfinder
  	assert_equal 2, @ucm.max_pathfinder
  	assert_equal 1, @ucm.min_line
  	assert_equal 2, @ucm.max_line
  	assert_equal 0, @ucm.min_vanguard
  	assert_equal 1, @ucm.max_vanguard
  	assert_equal 0, @ucm.min_flag
  	assert_equal 0, @ucm.max_flag

  	assert_equal 6, @ucm1000.max_battlegroups
  	assert_equal 1, @ucm1000.min_pathfinder
  	assert_equal 2, @ucm1000.max_pathfinder
  	assert_equal 1, @ucm1000.min_line
  	assert_equal 3, @ucm1000.max_line
  	assert_equal 0, @ucm1000.min_vanguard
  	assert_equal 2, @ucm1000.max_vanguard
  	assert_equal 0, @ucm1000.min_flag
  	assert_equal 1, @ucm1000.max_flag

  	assert_equal 7, @ucm2000.max_battlegroups
  	assert_equal 1, @ucm2000.min_pathfinder
  	assert_equal 3, @ucm2000.max_pathfinder
  	assert_equal 1, @ucm2000.min_line
  	assert_equal 4, @ucm2000.max_line
  	assert_equal 0, @ucm2000.min_vanguard
  	assert_equal 3, @ucm2000.max_vanguard
  	assert_equal 0, @ucm2000.min_flag
  	assert_equal 2, @ucm2000.max_flag
  end

  test "fleet costs the sum of its battlegroups" do 
    # empty fleet = 0 points
    assert_equal 0, @ucm.cost
    # add group of toulons to line BG
    @toulons.ship_id = @toulon.id
    @toulons.battlegroup_id = @line.id 
    @toulons.save
    @line.fleet_id = @ucm.id
    @line.cost = calc_battlegroup_cost(@line)
    @line.save
    # line BG costs 105
    assert_equal 105, @line.cost
    # fleet costs 105 (3 toulons)
    @ucm.cost = calc_fleet_cost(@ucm)
    @ucm.save
    assert_equal 105, @ucm.cost
    # add group of 1 seattle to line
    @seattle_group.ship_id = @seattle.id
    @seattle_group.battlegroup_id = @line.id
    @seattle_group.save 
    @line.reload
    @line.cost = calc_battlegroup_cost(@line)
    @line.save
    # fleet cost = 237 (3 toulons + 1 seattle)
    @ucm.reload
    @ucm.cost = calc_fleet_cost(@ucm)
    @ucm.save
    assert_equal 237, @ucm.cost
    # remove seattle from BG
    @seattle_group.battlegroup_id = @vanguard.id
    @seattle_group.save
    @line.reload
    @line.cost = calc_battlegroup_cost(@line)
    @line.save
    # line costs 105
    assert_equal 105, @line.cost
    # fleet costs 105
    @ucm.reload
    @ucm.cost = calc_fleet_cost(@ucm)
    @ucm.save
    assert_equal 105, @ucm.cost 
  end


end
