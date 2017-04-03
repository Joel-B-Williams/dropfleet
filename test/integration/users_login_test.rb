require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@user = users(:user)
  end

  test "user logs in" do
  	get root_path
  	get login_path
  end

end
