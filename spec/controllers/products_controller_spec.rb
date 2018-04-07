require "rails_helper"

RSpec.describe ProductsController, type: :controller do
  describe "GET index" do
    it "assigns a list of products" do
      products = FactoryBot.create_list(:product, 5)

      get :index

      expect(assigns[:products]).to eq(products)
    end
  end

  describe "GET new" do
    it "assigns a new product" do
      get :new

      expect(assigns(:product)).to be_a_new(Product)
    end
  end

  describe "POST create" do
    it "creates a new product" do
      new_product_params = { product: {
        name: "New Product",
        price: 100
      } }

      post :create, params: new_product_params

      product = Product.last

      expect(product.name).to eq("New Product")
      expect(product.price).to eq(100.0)
    end

    it "redirects to products index" do
      new_product_params = { product: {
        name: "New Product",
        price: 100
      } }

      post :create, params: new_product_params

      expect(response).to redirect_to(products_path)
    end
  end

  describe "GET show" do
    it "assigns the product" do
      product = FactoryBot.create(:product)

      get :show, params: { id: product.id }

      expect(assigns(:product)).to eq(product)
    end
  end
end
