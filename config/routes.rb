Rails.application.routes.draw do  
  get 'company/registrarEmpresa'

  get 'questions/question'
  get 'questions/question2'

  get 'company/business'

  devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'welcome#index'
  get 'turist/index'
  get 'detalle/index'
  get 'company/business'
  get 'company/pagos'
  get 'company/edit'
  get 'company/mySite'
  post 'company/insertSite'
  get 'company/insertSite'

  post "posts" => 'company#saveSite'
  
  
   
  resources :sites do
  resources :photos
  end
end