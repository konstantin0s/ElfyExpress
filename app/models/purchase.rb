class Purchase < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections
  belongs_to :user

  validates :total_amount, presence: true
  validates :total_price, presence: true
  validates :bought, presence: true
  validates :user, presence: true


end
