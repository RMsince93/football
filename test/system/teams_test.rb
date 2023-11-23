require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "should create team" do
    visit teams_url
    click_on "New team"

    fill_in "Age average", with: @team.age_average
    fill_in "Country", with: @team.country
    fill_in "Name", with: @team.name
    fill_in "Stadium", with: @team.stadium
    fill_in "Stadium capacity", with: @team.stadium_capacity
    fill_in "Total players", with: @team.total_players
    fill_in "Trophies", with: @team.trophies
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "should update Team" do
    visit team_url(@team)
    click_on "Edit this team", match: :first

    fill_in "Age average", with: @team.age_average
    fill_in "Country", with: @team.country
    fill_in "Name", with: @team.name
    fill_in "Stadium", with: @team.stadium
    fill_in "Stadium capacity", with: @team.stadium_capacity
    fill_in "Total players", with: @team.total_players
    fill_in "Trophies", with: @team.trophies
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "should destroy Team" do
    visit team_url(@team)
    click_on "Destroy this team", match: :first

    assert_text "Team was successfully destroyed"
  end
end
