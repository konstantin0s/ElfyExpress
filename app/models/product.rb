class Product < ApplicationRecord
  belongs_to :category
  has_many :selections
  has_many :products, through: :selections
  
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :image_url, presence: true
  validates :price, presence: true

  def self.order_by_price
    order :price
  end

end
