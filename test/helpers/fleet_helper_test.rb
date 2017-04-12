require 'test_helper'

class FleetsHelperTest < ActionView::TestCase

	def setup
		@ucm = fleets(:ucm_fleet)
		@ucm1000 = fleets(:ucm_1000)
		@ucm2000 = fleets(:ucm_2000)
	end

	test "displays fleet information" do
		assert_equal "Test Fleet UCM", show_name(@ucm)
		# assert_equal "UCM", show_faction(@ucm) -> need faction fixture
		assert_equal '0/4', show_battlegroup_count(@ucm)
		assert_equal '0/0', show_flag_count(@ucm)
		assert_equal '0/1', show_vanguard_count(@ucm)
		assert_equal '0/2', show_line_count(@ucm)
		assert_equal '0/2', show_pathfinder_count(@ucm)		

		assert_equal '0/6', show_battlegroup_count(@ucm1000)
		assert_equal '0/1', show_flag_count(@ucm1000)
		assert_equal '0/2', show_vanguard_count(@ucm1000)
		assert_equal '0/3', show_line_count(@ucm1000)
		assert_equal '0/2', show_pathfinder_count(@ucm1000)	

		assert_equal '0/7', show_battlegroup_count(@ucm2000)
		assert_equal '0/2', show_flag_count(@ucm2000)
		assert_equal '0/3', show_vanguard_count(@ucm2000)
		assert_equal '0/4', show_line_count(@ucm2000)
		assert_equal '0/3', show_pathfinder_count(@ucm2000)
	end

	test "small fleets can't have flag battlegroups" do 
		assert can_have_flag(@ucm1000)
		assert_not can_have_flag(@ucm)
	end

	test "fleet can add battlegroups if not at max" do
		assert_not can_add_flag(@ucm)
		assert can_add_vanguard(@ucm)
		assert can_add_line(@ucm)
		assert can_add_pathfinder(@ucm)
		
		assert can_add_flag(@ucm1000)
		assert can_add_vanguard(@ucm1000)
		assert can_add_line(@ucm1000)
		assert can_add_pathfinder(@ucm1000)
	end
end