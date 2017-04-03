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
end
