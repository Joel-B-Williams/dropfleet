require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "user logs in" do
  # grab fixture 
  	user = users(:user)
  	get root_path
  	get login_path
  end

end
