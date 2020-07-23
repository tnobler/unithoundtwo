class CreateBudgetItemLists < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_item_lists do |t|

      t.timestamps
    end
  end
end
