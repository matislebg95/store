Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  resource :sign_up
  namespace :settings do
    resource :password, only: [ :show, :update ]
    resource :profile, only: [ :show, :update ]

    root to: redirect("/settings/profile")

  end

  get "/products", to: "products#index"
  resources :products
  root "products#index"
end
