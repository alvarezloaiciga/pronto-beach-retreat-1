class Api::V1::ProductsController < Api::V1::ApplicationController

  def index
    @products = Product.all

    if current_user
      render json: @products, each_serializer: AuthenticatedProductSerializer
    else
      render json: @products
    end
  end
end
