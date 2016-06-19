Rails.application.routes.draw do

  get 'questions/question'

devise_for :users
  root 'welcome#index'
  get 'turist/index'
<<<<<<< HEAD
  get 'turist/penaBlanca'
  get 'turist/extremeActivities'
  get 'turist/restaurant'
  get 'turist/bars'
  get 'turist/gotcha'
  get 'turist/lakatana'






=======
  get 'questions/question'
>>>>>>> f0c0f82b7dd56aba309d3ac1c8932c8d01f7935f

end


