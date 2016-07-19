Rails.application.routes.draw do  

   devise_for :users, controllers:{
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  get 'company/registrarEmpresa'
  get 'questions/question'
  get 'questions/question2'
  get 'company/business'
  root 'welcome#index'
  get 'turist/index'
  get 'detalle/index'
  get 'company/business'
  get 'company/pagos'
  get 'company/edit'
  get 'company/mySite'
  post 'company/insertSite'
  get 'company/insertSite'
  post 'company/insertClasification'
  get 'company/insertClasification'
  

 
   
  resources :sites do
    resources :site_x_clasifications
  end
end
