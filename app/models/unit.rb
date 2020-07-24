class Unit < ApplicationRecord
  belongs_to :property
  has_many :budget_items
end
