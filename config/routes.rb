Rails.application.routes.draw do

  get 'questions/question'

devise_for :users
  root 'welcome#index'
  get 'turist/index'
  get 'questions/question'

end


