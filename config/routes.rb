Rails.application.routes.draw do
  devise_for :users
  
  resources :wikis
  resources :user_validations, only: [:new, :create]
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
