class AddCompleteToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    add_column :budget_items, :complete, :boolean, default: false
  end
end
