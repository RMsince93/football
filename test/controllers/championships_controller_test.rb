require "test_helper"

class ChampionshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @championship = championships(:one)
  end

  test "should get index" do
    get championships_url
    assert_response :success
  end

  test "should get new" do
    get new_championship_url
    assert_response :success
  end

  test "should create championship" do
    assert_difference("Championship.count") do
      post championships_url, params: { championship: { actual_champion: @championship.actual_champion, country: @championship.country, name: @championship.name, number_of_teams: @championship.number_of_teams, total_players: @championship.total_players } }
    end

    assert_redirected_to championship_url(Championship.last)
  end

  test "should show championship" do
    get championship_url(@championship)
    assert_response :success
  end

  test "should get edit" do
    get edit_championship_url(@championship)
    assert_response :success
  end

  test "should update championship" do
    patch championship_url(@championship), params: { championship: { actual_champion: @championship.actual_champion, country: @championship.country, name: @championship.name, number_of_teams: @championship.number_of_teams, total_players: @championship.total_players } }
    assert_redirected_to championship_url(@championship)
  end

  test "should destroy championship" do
    assert_difference("Championship.count", -1) do
      delete championship_url(@championship)
    end

    assert_redirected_to championships_url
  end
end
