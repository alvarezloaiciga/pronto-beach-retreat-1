Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "/products", to: "products#index"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  get "/products/:token", to: "products#show", as: :product

end
