require 'test_helper'

class FleetsHelperTest < ActionView::TestCase

	def setup
		@ucm = fleets(:ucm_fleet)
	end

	test "displays fleet information" do
		assert_equal "Test Fleet UCM", show_name(@ucm)
		# assert_equal "UCM", show_faction(@ucm) -> need faction fixture
		assert_equal '0/4', show_battlegroup_count(@ucm)
		assert_equal '0/0', show_flag_count(@ucm)
		assert_equal '0/1', show_vanguard_count(@ucm)
		assert_equal '0/2', show_line_count(@ucm)
		assert_equal '0/2', show_pathfinder_count(@ucm)
	end
end