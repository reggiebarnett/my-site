require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Reggie Barnett's site"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get projects" do
    get projects_path
    assert_response :success
    assert_select "title", "Projects - #{@base_title}"
  end

  test "should get feed" do
    get feed_path
    assert_response :success
    assert_select "title", "Feed - #{@base_title}"
  end

  test "should get comments" do
    get comments_path
    assert_response :success
    assert_select "title", "Comments - #{@base_title}"
  end

end
