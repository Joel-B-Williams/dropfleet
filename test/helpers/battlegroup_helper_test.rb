require 'test_helper'

class BattlegroupsHelperTest < ActionView::TestCase

	def setup
		@flag = battlegroups(:flag)
		@vanguard = battlegroups(:vanguard)
		@line = battlegroups(:line)
		@pathfinder = battlegroups(:pathfinder)
	end

	test "displays battlegroup information" do
		# assert_equal '0/3', show_group_count(@pathfinder)
		# assert_equal '0/3', show_group_count(@vanguard)
		# assert_equal '0/3', show_group_count(@line)
		# assert_equal '0/2', show_group_count(@flag)
		# requires bg_type fixtures with name
	end

		# requires bg_type fixtures with name

end