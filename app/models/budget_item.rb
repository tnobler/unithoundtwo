class BudgetItem < ApplicationRecord
  # belongs_to :product
  has_one :product
  belongs_to :unit

  delegate :name, to: :product, prefix: true, allow_nil: true
  # BudgetItem.first.product_name = BudgetItem.first.product.name

end
