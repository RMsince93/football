require "application_system_test_case"

class NationalTeamsTest < ApplicationSystemTestCase
  setup do
    @national_team = national_teams(:one)
  end

  test "visiting the index" do
    visit national_teams_url
    assert_selector "h1", text: "National teams"
  end

  test "should create national team" do
    visit national_teams_url
    click_on "New national team"

    fill_in "Name", with: @national_team.name
    click_on "Create National team"

    assert_text "National team was successfully created"
    click_on "Back"
  end

  test "should update National team" do
    visit national_team_url(@national_team)
    click_on "Edit this national team", match: :first

    fill_in "Name", with: @national_team.name
    click_on "Update National team"

    assert_text "National team was successfully updated"
    click_on "Back"
  end

  test "should destroy National team" do
    visit national_team_url(@national_team)
    click_on "Destroy this national team", match: :first

    assert_text "National team was successfully destroyed"
  end
end
