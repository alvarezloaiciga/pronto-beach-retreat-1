class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find_by(token: params[:token])
  end

  private

  def product_params
    params
    .require(:product)
    .permit(:name, :price, :image)
  end
end
