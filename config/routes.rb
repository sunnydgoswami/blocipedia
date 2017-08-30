Rails.application.routes.draw do
  
  get 'collaborators/create'
  get 'collaborators/destroy'
  
  devise_for :users, controllers: { registration: 'registrations' }
  
  devise_scope :user do
    get '/downgrade' => 'registrations#downgrade'
  end
  
  resources :wikis
  resources :collaborators, only: [:create, :new, :destroy]
  resources :charges, only: [:new, :create]
  
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
