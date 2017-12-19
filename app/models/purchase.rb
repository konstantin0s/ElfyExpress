class Purchase < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections
end
