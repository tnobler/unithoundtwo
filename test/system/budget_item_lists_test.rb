require "application_system_test_case"

class BudgetItemListsTest < ApplicationSystemTestCase
  setup do
    @budget_item_list = budget_item_lists(:one)
  end

  test "visiting the index" do
    visit budget_item_lists_url
    assert_selector "h1", text: "Budget Item Lists"
  end

  test "creating a Budget item list" do
    visit budget_item_lists_url
    click_on "New Budget Item List"

    click_on "Create Budget item list"

    assert_text "Budget item list was successfully created"
    click_on "Back"
  end

  test "updating a Budget item list" do
    visit budget_item_lists_url
    click_on "Edit", match: :first

    click_on "Update Budget item list"

    assert_text "Budget item list was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget item list" do
    visit budget_item_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget item list was successfully destroyed"
  end
end
