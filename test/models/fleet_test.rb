require 'test_helper'

class FleetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@ucm = fleets(:ucm_fleet)
  	@ucm1000 = fleets(:ucm_1000)
  	@ucm2000 = fleets(:ucm_2000)
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


end
