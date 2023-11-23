require "application_system_test_case"

class ContinentsTest < ApplicationSystemTestCase
  setup do
    @continent = continents(:one)
  end

  test "visiting the index" do
    visit continents_url
    assert_selector "h1", text: "Continents"
  end

  test "should create continent" do
    visit continents_url
    click_on "New continent"

    fill_in "Name", with: @continent.name
    click_on "Create Continent"

    assert_text "Continent was successfully created"
    click_on "Back"
  end

  test "should update Continent" do
    visit continent_url(@continent)
    click_on "Edit this continent", match: :first

    fill_in "Name", with: @continent.name
    click_on "Update Continent"

    assert_text "Continent was successfully updated"
    click_on "Back"
  end

  test "should destroy Continent" do
    visit continent_url(@continent)
    click_on "Destroy this continent", match: :first

    assert_text "Continent was successfully destroyed"
  end
end
