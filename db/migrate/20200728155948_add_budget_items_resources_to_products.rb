class AddBudgetItemsResourcesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :budget_item, null: true, foreign_key: true
  end
end
