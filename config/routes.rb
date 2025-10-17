Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  get "/products", to: "products#index"
  resources :products
  root "products#index"
end
