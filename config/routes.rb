Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :products, only: %i[index new create show]

  namespace :api do
    namespace :v1 do
      resources :products, only: :index
    end
  end
end
