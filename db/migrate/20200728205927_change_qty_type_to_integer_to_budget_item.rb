class ChangeQtyTypeToIntegerToBudgetItem < ActiveRecord::Migration[6.0]
  def change
    add_column :budget_items, :qtty, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
