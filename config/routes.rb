Rails.application.routes.draw do

  get 'questions/question'

devise_for :users
  root 'welcome#index'
  get 'turist/index'
  get 'turist/penaBlanca'
  get 'turist/extremeActivities'
  get 'turist/restaurant'
  get 'turist/bars'
  get 'turist/gotcha'
  get 'turist/lakatana'







  get 'questions/question'


end


