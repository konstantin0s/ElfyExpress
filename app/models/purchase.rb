class Purchase < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections
  belongs_to :user

  validates :total_price, presence: true
  validates :user, presence: true
  validates :total_amount, presence: true

  #   def test12
#
#       self.purchase.curent_user do |user|
#
#       total_amount = []
#       self.selection :total_price
#
#       @Selection. { |i| @sum  i }
#   end
#
# def
#   def total_item
#     self.item.sum(:price)
  # end

  #below does not work. should set total_price from all selection.total_price
    # def total_amount
    #   self.amount.sum(:price)
    # end


end
