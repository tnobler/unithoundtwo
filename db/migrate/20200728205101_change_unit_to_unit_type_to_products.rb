class ChangeUnitToUnitTypeToProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :unit, :base_unit
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
