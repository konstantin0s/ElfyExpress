class Selection < ApplicationRecord
  belongs_to :products
  belongs_to :purchases

  validates :price, presence: true
  validates :amount, presence: true
  validates :total_price, presence: true
  validates :product_id, presence: true
  validates :purchase_id, presence: true

  def calculate_total_price
    self.total_price = amount * price
  end

end
