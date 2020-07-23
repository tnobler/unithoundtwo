class CreateBudgetItems < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_items do |t|
      t.string :qty
      t.belongs_to :budget_item, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
