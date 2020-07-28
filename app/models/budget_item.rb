class BudgetItem < ApplicationRecord
  # belongs_to :product
  has_one :product
  belongs_to :unit
  belongs_to :property
  

  delegate :name, to: :product, prefix: true, allow_nil: true
  # BudgetItem.first.product_name = BudgetItem.first.product.name

end
