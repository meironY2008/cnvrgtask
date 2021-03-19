require "application_system_test_case"

class DriversandcarsTest < ApplicationSystemTestCase
  setup do
    @driversandcar = driversandcars(:one)
  end

  test "visiting the index" do
    visit driversandcars_url
    assert_selector "h1", text: "Driversandcars"
  end

  test "creating a Driversandcar" do
    visit driversandcars_url
    click_on "New Driversandcar"

    click_on "Create Driversandcar"

    assert_text "Driversandcar was successfully created"
    click_on "Back"
  end

  test "updating a Driversandcar" do
    visit driversandcars_url
    click_on "Edit", match: :first

    click_on "Update Driversandcar"

    assert_text "Driversandcar was successfully updated"
    click_on "Back"
  end

  test "destroying a Driversandcar" do
    visit driversandcars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driversandcar was successfully destroyed"
  end
end
