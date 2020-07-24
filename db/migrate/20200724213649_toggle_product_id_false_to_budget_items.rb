class ToggleProductIdFalseToBudgetItems < ActiveRecord::Migration[6.0]
  def change
    change_column :budget_items, :product_id, :bigint, :null => true
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
