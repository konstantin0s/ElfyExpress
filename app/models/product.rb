class Product < ApplicationRecord
  belongs_to :category
  has_many :selections
  has_many :products, through: :selections
end
