require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:user)
  end

  test "layout page with variable links" do 
  	get root_path
  	assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", login_path
    assert_select "a[href=?]", new_user_path
    assert_select "section.flash-section"
    log_in(@user)
    assert_redirected_to user_path(@user)
    follow_redirect!
    get root_path
    assert_select "a[href=?]", login_path, count: 0
  	assert_select "a[href=?]", root_path
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_fleets_path(@user)
    assert_select "a[href=?]", user_path(@user)
  end

end
