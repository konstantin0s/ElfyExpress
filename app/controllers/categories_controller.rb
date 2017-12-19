class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @products = @category.products
  end
end
