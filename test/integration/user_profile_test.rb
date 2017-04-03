require 'test_helper'

class UserProfileTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:user)
  end

  test "User visits profile" do 
  	get root_path
  	assert_select 'a[href=?]', user_path(@user), count: 0
  	log_in(@user)
  	assert_redirected_to user_path(@user)
  	follow_redirect!
  	assert_template 'users/show'
  	get root_path
  	assert_select 'a[href=?]', user_path(@user)
  	get user_path(@user)
  	assert_template 'users/show'

  end

end
