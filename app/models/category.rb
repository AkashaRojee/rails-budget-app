class Category < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :purchases

  def amount
    purchases.sum('amount')
  end
end
