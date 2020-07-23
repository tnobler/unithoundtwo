require "application_system_test_case"

class UnitsTest < ApplicationSystemTestCase
  setup do
    @unit = units(:one)
  end

  test "visiting the index" do
    visit units_url
    assert_selector "h1", text: "Units"
  end

  test "creating a Unit" do
    visit units_url
    click_on "New Unit"

    fill_in "Baths", with: @unit.baths
    fill_in "Beds", with: @unit.beds
    fill_in "Floor plan", with: @unit.floor_plan
    fill_in "Number", with: @unit.number
    fill_in "Property", with: @unit.property_id
    fill_in "Sqft", with: @unit.sqft
    click_on "Create Unit"

    assert_text "Unit was successfully created"
    click_on "Back"
  end

  test "updating a Unit" do
    visit units_url
    click_on "Edit", match: :first

    fill_in "Baths", with: @unit.baths
    fill_in "Beds", with: @unit.beds
    fill_in "Floor plan", with: @unit.floor_plan
    fill_in "Number", with: @unit.number
    fill_in "Property", with: @unit.property_id
    fill_in "Sqft", with: @unit.sqft
    click_on "Update Unit"

    assert_text "Unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Unit" do
    visit units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unit was successfully destroyed"
  end
end
