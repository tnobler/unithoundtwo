require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "creating a Property" do
    visit properties_url
    click_on "New Property"

    check "Ae flood zone" if @property.ae_flood_zone
    fill_in "Asking price", with: @property.asking_price
    fill_in "City", with: @property.city
    fill_in "Name", with: @property.name
    fill_in "Notes", with: @property.notes
    fill_in "Purchase price", with: @property.purchase_price
    fill_in "State", with: @property.state
    fill_in "Status", with: @property.status
    fill_in "Street address", with: @property.street_address
    fill_in "Unit count", with: @property.unit_count
    fill_in "User", with: @property.user_id
    fill_in "Year built", with: @property.year_built
    fill_in "Zipcode", with: @property.zipcode
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "updating a Property" do
    visit properties_url
    click_on "Edit", match: :first

    check "Ae flood zone" if @property.ae_flood_zone
    fill_in "Asking price", with: @property.asking_price
    fill_in "City", with: @property.city
    fill_in "Name", with: @property.name
    fill_in "Notes", with: @property.notes
    fill_in "Purchase price", with: @property.purchase_price
    fill_in "State", with: @property.state
    fill_in "Status", with: @property.status
    fill_in "Street address", with: @property.street_address
    fill_in "Unit count", with: @property.unit_count
    fill_in "User", with: @property.user_id
    fill_in "Year built", with: @property.year_built
    fill_in "Zipcode", with: @property.zipcode
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "destroying a Property" do
    visit properties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Property was successfully destroyed"
  end
end
