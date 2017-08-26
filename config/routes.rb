Rails.application.routes.draw do
  devise_for :users, controllers: { registration: 'registrations' }
  
  devise_scope :user do
    get '/downgrade' => 'registrations#downgrade'
  end
  
  resources :wikis
  resources :charges, only: [:new, :create]
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
