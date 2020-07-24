class AddPropertyResourcesToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :budget_items, :property, null: true, foreign_key: true
  end
end
