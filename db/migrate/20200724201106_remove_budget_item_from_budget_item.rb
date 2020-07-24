class RemoveBudgetItemFromBudgetItem < ActiveRecord::Migration[6.0]
  def change
    remove_reference :budget_items, :budget_item, null: false, foreign_key: true
  end
end
