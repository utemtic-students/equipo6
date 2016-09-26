Rails.application.routes.draw do


  get 'list/index'

  get 'mobile/index'

  resources :sites
  resources :posts
  resources :posts
  get 'client/index'
  get 'turist_prod/index'
  get 'client/index'
  get 'turist_prod/index'
  get 'question/index'
  post 'question/index'
  get 'question/newQuest'
  post 'question/newQuest'
  get 'question/validarSiguiente'
  post 'question/validarSiguiente'
  get 'question/desmarcar'
  post 'question/desmarcar'
   
  resources :client
  get '/client/new'
  post '/client/new'
  
  get 'detail/index'
  get 'question/index'
  get 'turist/index'
  post 'turist/index'
  get 'detail/index'
  post 'detail/index'
  get 'turist_prod/index'
  post 'turist_prod/index'
  

  resources :attachments, only: [:create,:destroy,:new,:show]
  resources :products
  resources :in_shopping_carts, only: [:create,:destroy]
  devise_for :users

  post "/emails/create", as: :create_email
  post "/pagar", to: "payments#create"
  post "/payments/cards", to:"payments#process_card"

  get "/carrito", to: "shopping_carts#show"
  get "/add/:product_id",as: :add_to_cart,to: "in_shopping_carts#create" 
  get "/checkout", to: "payments#checkout"

  get "/descargar/:id", to:"links#download"
  get "/descargar/:id/archivo/:attachment_id", to:"links#download_attachment",as: :download_attachment
  get "/invalid", to: "welcome#unregistered"

  get "/ok", to: "welcome#payment_succed"

  get "/ordenes", to: "ordenes#index"
  
  authenticated :user do
    root 'welcome#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root "welcome#unregistered", as: :unregistered_root
    end
  end
end
