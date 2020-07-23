require "application_system_test_case"

class BudgetItemsTest < ApplicationSystemTestCase
  setup do
    @budget_item = budget_items(:one)
  end

  test "visiting the index" do
    visit budget_items_url
    assert_selector "h1", text: "Budget Items"
  end

  test "creating a Budget item" do
    visit budget_items_url
    click_on "New Budget Item"

    fill_in "Budget item", with: @budget_item.budget_item_id
    fill_in "Product", with: @budget_item.product_id
    fill_in "Qty", with: @budget_item.qty
    click_on "Create Budget item"

    assert_text "Budget item was successfully created"
    click_on "Back"
  end

  test "updating a Budget item" do
    visit budget_items_url
    click_on "Edit", match: :first

    fill_in "Budget item", with: @budget_item.budget_item_id
    fill_in "Product", with: @budget_item.product_id
    fill_in "Qty", with: @budget_item.qty
    click_on "Update Budget item"

    assert_text "Budget item was successfully updated"
    click_on "Back"
  end

  test "destroying a Budget item" do
    visit budget_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Budget item was successfully destroyed"
  end
end
