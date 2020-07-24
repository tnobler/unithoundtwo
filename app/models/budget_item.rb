class BudgetItem < ApplicationRecord
  # belongs_to :product
  has_one :product
  belongs_to :unit
end
