require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get teams" do
    get pages_teams_url
    assert_response :success
  end

  test "should get players" do
    get pages_players_url
    assert_response :success
  end

end
