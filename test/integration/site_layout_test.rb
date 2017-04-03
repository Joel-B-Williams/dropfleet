require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout page" do 
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]", root_path
  	assert_select "a[href=?]", login_path
  	assert_select "a[href=?]", logout_path
  	assert_select "a[href=?]", new_user_path
  	assert_select "section.flash-section"
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
  	assert_redirected_to root_path
  	follow_redirect!
  	assert_template 'static_pages/home'
  	assert_not flash.empty?
  end
end
