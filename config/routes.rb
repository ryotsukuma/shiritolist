Rails.application.routes.draw do
  
  root to: 'shiritoris#index'
  get 'toppage', to: 'shiritoris#index'

  resources :shiritoris, only:[:index,:create]  
  resources :histories, only:[:index,:show]
end
