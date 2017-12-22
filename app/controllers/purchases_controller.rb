class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def show
    @purchases = Purchase.find(params[:id])
  end

  def create
    @purchases = current_user.purchase.create(purchase_params.merge({}))
    @purchases.set_total_price
    @purchases.set_total_amount
  end

  def update
   if @purchases.update(purchase_params)
    redirect_to @purchases, notice: "Cart updated"
   else
    render :edit
   end
  end

  def edit
    set_purchase
  end

  private

  def set_purchase
    @purchases = Purchase.find(params[:id])
  end

  def purchase_params
   params
     .require(:purchase)
     .permit()
  end
end
