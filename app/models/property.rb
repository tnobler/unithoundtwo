class Property < ApplicationRecord
  belongs_to :user
  has_many :units
  has_many :budget_items


  def author(user)
    self.properties_users.where(user: user)
  end
end
