Rails.application.routes.draw do

devise_for :users
  root 'welcome#index'
<<<<<<< HEAD
=======
  get 'turist/index'

>>>>>>> e98c9ecdf403e26283f9d67935f55429fec0b4aa
end


