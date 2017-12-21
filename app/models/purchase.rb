class Purchase < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections
  belongs_to :user

  validates :total_price, presence: true
  validates :user, presence: true
  validates :total_amount, presence: true

  def set_total_price
  end

  def set_total_amount
  end

end
