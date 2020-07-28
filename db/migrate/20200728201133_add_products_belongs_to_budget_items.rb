class AddProductsBelongsToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :budget_items, :product, null: false, foreign_key: true
  end
end
