class Property < ApplicationRecord
  belongs_to :user
  has_many :units


  def author(user)
    self.properties_users.where(user: user)
  end
end
