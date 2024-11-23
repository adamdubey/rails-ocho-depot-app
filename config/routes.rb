Rails.application.routes.draw do
  get "admin" => "admin#index"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :users
  resources :products do
    get :who_bought, on: :member
  end

  scope "(:locale)" do
    resource :session
    resources :passwords, param: :token
    resources :orders
    resources :line_items
    resources :carts
    root "store#index", as: "store_index", via: :all
  end
end
