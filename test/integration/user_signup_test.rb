require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:user)
  end
  
  test "user signup scenario" do 
  	# user signs up with invalid info
  	get root_path
  	get new_user_path
  	assert_template 'users/new' 
  	assert_select 'section.form'
  	post users_path, params: { user: { username: "",
  												password: "password",
  												password_confirmation: "password" } }
  	assert_template 'users/new'
  	post users_path, params: { user: { username: "User",
  												password: "password",
  												password_confirmation: "passwor" } }
  	assert_template 'users/new'
  	post users_path, params: { user: { username: "User",
  												password: "pass",
  												password_confirmation: "pass" } }
  	assert_template 'users/new'
  	# user signs up with valid information
  	post users_path, params: { user: { username: "User",
  												password: "password",
  												password_confirmation: "password" } }
  	# assert_redirected_to user_path(@user)
    follow_redirect!
  	assert_template 'users/show'
  	# assert_not flash.empty?
  end
end
