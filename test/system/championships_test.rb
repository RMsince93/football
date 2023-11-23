require "application_system_test_case"

class ChampionshipsTest < ApplicationSystemTestCase
  setup do
    @championship = championships(:one)
  end

  test "visiting the index" do
    visit championships_url
    assert_selector "h1", text: "Championships"
  end

  test "should create championship" do
    visit championships_url
    click_on "New championship"

    fill_in "Actual champion", with: @championship.actual_champion
    fill_in "Country", with: @championship.country
    fill_in "Name", with: @championship.name
    fill_in "Number of teams", with: @championship.number_of_teams
    fill_in "Total players", with: @championship.total_players
    click_on "Create Championship"

    assert_text "Championship was successfully created"
    click_on "Back"
  end

  test "should update Championship" do
    visit championship_url(@championship)
    click_on "Edit this championship", match: :first

    fill_in "Actual champion", with: @championship.actual_champion
    fill_in "Country", with: @championship.country
    fill_in "Name", with: @championship.name
    fill_in "Number of teams", with: @championship.number_of_teams
    fill_in "Total players", with: @championship.total_players
    click_on "Update Championship"

    assert_text "Championship was successfully updated"
    click_on "Back"
  end

  test "should destroy Championship" do
    visit championship_url(@championship)
    click_on "Destroy this championship", match: :first

    assert_text "Championship was successfully destroyed"
  end
end
