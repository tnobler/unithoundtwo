class BudgetItem < ApplicationRecord
  belongs_to :budget_item
  belongs_to :product
end
