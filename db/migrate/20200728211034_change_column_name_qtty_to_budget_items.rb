class ChangeColumnNameQttyToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :budget_items, :qtty, :qty
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
