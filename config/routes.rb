Rails.application.routes.draw do  

  devise_for :models
   devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'welcome#index'
  get 'company/registrarEmpresa'
  get 'questions/question'
  get 'questions/question2'
  get 'company/business'
  get 'turist/index'
  get 'detalle/index'
  get 'company/business'
  get 'company/pagos'
  get 'company/edit'
  get 'company/mySite'
  get 'company/insertSite'
  get 'company/insertClasification'
  post 'company/insertClasification'
  post 'company/insertSite'
  

 
   
  resources :sites do
    resources :site_x_clasifications
  end
end