class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update]

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @products = @category.products
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
