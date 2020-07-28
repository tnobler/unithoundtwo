class BudgetItem < ApplicationRecord
  belongs_to :unit
  belongs_to :property
  belongs_to :product
  

  delegate :name, to: :product, prefix: true, allow_nil: true
  # BudgetItem.first.product_name = BudgetItem.first.product.name

end
