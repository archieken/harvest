Rails.application.routes.draw do

  #get 'products/index'

  #get 'products/show'

  #get 'order_lines/create'

  #get 'orders/index'

  devise_for :users
  root to: 'pages#home'
    resources :users, only: [:new, :create, :edit, :update]
    resources :orders, only: [:index] do
      resources :payments, only: [:new, :create]
    end
    resources :products, only: [:index, :show] do
      resources :order_lines, only: [:create]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
