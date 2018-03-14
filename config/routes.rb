Rails.application.routes.draw do

  #get 'products/index'

  #get 'products/show'

  #get 'order_lines/create'

  #get 'orders/index'
  get '/products/:id/add', to: 'order_lines#add_to_basket', as: 'add_to_basket'

  get '/order_lines/:id/add', to: 'order_lines#add', as: 'add_order_lines'

  get '/order_lines/:id/remove', to: 'order_lines#remove', as: 'remove_order_lines'


  devise_for :users
  root to: 'pages#home'
    resources :users, only: [:new, :create, :edit, :update] do
      resources :contacts, only: [:update]
    end
    resources :orders, only: [:index] do
      resources :payments, only: [:new, :create]
    end
    resources :products, only: [:index, :show] do
      resources :order_lines, only: [:create, :update]
    end
    resources :order_lines, only: [:destroy]

    get  "/postcodecheckers", to: "postcodecheckers#check_address"
    get  "/checkout", to: "payments#checkout"
end
