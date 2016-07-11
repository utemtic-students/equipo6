Rails.application.routes.draw do  
  get 'questions/question'
  get 'questions/question2'

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'welcome#index'
  get 'turist/index'
  get 'detalle/index'
  resources :sites do
  resources :photos
  end
end