class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def show
  #  @product = Product.find(params[:id])
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
