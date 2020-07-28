class RemoveQtyColumnToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :budget_items, :qty
  end
end
