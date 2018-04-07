class ProductsController < ApplicationController
  def index
    @products = Product.all

    respond_to do |f|
      f.html
      f.json { render json: @products }
    end
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
