require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "should create player" do
    visit players_url
    click_on "New player"

    fill_in "Age", with: @player.age
    fill_in "Assists", with: @player.assists
    fill_in "Clean sheets", with: @player.clean_sheets
    fill_in "Goals", with: @player.goals
    fill_in "Goals suffered", with: @player.goals_suffered
    fill_in "Height", with: @player.height
    fill_in "Market value", with: @player.market_value
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Position", with: @player.position
    fill_in "Preferred foot", with: @player.preferred_foot
    fill_in "Red cards", with: @player.red_cards
    fill_in "Secondary positions", with: @player.secondary_positions
    fill_in "Shirt number", with: @player.shirt_number
    fill_in "Weight", with: @player.weight
    fill_in "Yellow cards", with: @player.yellow_cards
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "should update Player" do
    visit player_url(@player)
    click_on "Edit this player", match: :first

    fill_in "Age", with: @player.age
    fill_in "Assists", with: @player.assists
    fill_in "Clean sheets", with: @player.clean_sheets
    fill_in "Goals", with: @player.goals
    fill_in "Goals suffered", with: @player.goals_suffered
    fill_in "Height", with: @player.height
    fill_in "Market value", with: @player.market_value
    fill_in "Name", with: @player.name
    fill_in "Nationality", with: @player.nationality
    fill_in "Position", with: @player.position
    fill_in "Preferred foot", with: @player.preferred_foot
    fill_in "Red cards", with: @player.red_cards
    fill_in "Secondary positions", with: @player.secondary_positions
    fill_in "Shirt number", with: @player.shirt_number
    fill_in "Weight", with: @player.weight
    fill_in "Yellow cards", with: @player.yellow_cards
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "should destroy Player" do
    visit player_url(@player)
    click_on "Destroy this player", match: :first

    assert_text "Player was successfully destroyed"
  end
end
