class SelectionsController < ApplicationController
  def create
    @purchase = current_purchase
    @selection = current_purchase.selections.create(selection_params.merge( {
      price: set_price,
      total_price: set_selection_total_price
    }))

    session[:purchase_id] = @purchase.id
    redirect_to(@selection.product, notice: "Added to cart.")
  end

  def update
   if @selection.update(selection_params)
     if @selection.amount == 0
        @selection.destroy
     end
   end
  end

  private

  def selection_params
  params
    .require(:selection)
    .permit(:amount)
  end

end
