class Purchase < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections
  belongs_to :user

  validates :total_price, presence: true
  validates :user, presence: true
  validates :total_amount, presence: true

  def set_total_price
    price = 0
    self.selections.each do |selection|
      price += selection.total_price
    end
    return price
  end

  def set_total_amount
    amount = 0
    self.selections.each do |selection|
      amount += selection.amount
    end
    return amount
  end

end
