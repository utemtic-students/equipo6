Rails.application.routes.draw do

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'questions/question'  
  root 'welcome#index'
  get 'turist/index'
   get 'detalle/index'
  resources :sites do
  resources :photos
  end
end