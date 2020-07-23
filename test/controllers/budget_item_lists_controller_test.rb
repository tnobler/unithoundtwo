require 'test_helper'

class BudgetItemListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_item_list = budget_item_lists(:one)
  end

  test "should get index" do
    get budget_item_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_item_list_url
    assert_response :success
  end

  test "should create budget_item_list" do
    assert_difference('BudgetItemList.count') do
      post budget_item_lists_url, params: { budget_item_list: {  } }
    end

    assert_redirected_to budget_item_list_url(BudgetItemList.last)
  end

  test "should show budget_item_list" do
    get budget_item_list_url(@budget_item_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_item_list_url(@budget_item_list)
    assert_response :success
  end

  test "should update budget_item_list" do
    patch budget_item_list_url(@budget_item_list), params: { budget_item_list: {  } }
    assert_redirected_to budget_item_list_url(@budget_item_list)
  end

  test "should destroy budget_item_list" do
    assert_difference('BudgetItemList.count', -1) do
      delete budget_item_list_url(@budget_item_list)
    end

    assert_redirected_to budget_item_lists_url
  end
end
