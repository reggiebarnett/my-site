require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
  	get root_path
  	assert_template 'pages/home'
  	assert_select "a[href=?]", root_path
  	assert_select "a[href=?]", projects_path
  	assert_select "a[href=?]", feed_path
  	assert_select "a[href=?]", comments_path
  end
end 
