class AddProductToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    add_column :budget_items, :product, :string
  end
end
