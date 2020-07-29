class AddBudgetToUnit < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :budget, :decimal
  end
end
