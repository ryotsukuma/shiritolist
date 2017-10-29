Rails.application.routes.draw do
  
  get 'rankings/word'

  root to: 'shiritoris#index'
  get 'toppage', to: 'shiritoris#index'
  get 'rankings/word', to: 'rankings#word'

  resources :shiritoris, only:[:index,:create]  
  resources :histories, only:[:index,:show]
end
