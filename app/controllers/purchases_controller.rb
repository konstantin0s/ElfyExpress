class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update]
  before_action :authenticate_user!

  def show
    @purchase = current_user.purchase
  end

  def create
    @purchase = current_user.purchase.create(purchase_params.merge({}))
    @purchase.set_total_price
    @purchase.set_total_amount
  end

  def update
   if @purchase.update(purchase_params)
    redirect_to @purchase, notice: "Cart updated"
   else
    render :edit
   end
  end

  def edit
    set_purchase
  end

  private

  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  def purchase_params
   params
     .require(:purchase)
     .permit()
  end
end
