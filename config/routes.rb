Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'finder#index'

  resources :products, only: [:index, :show]
  resources :customers, only: [:show, :new, :create, :edit, :update]

  get 'phones' => 'finder#phones'
  get 'tablets' => 'finder#tablets'
  get 'laptops' => 'finder#laptops'

  get '/signup' => 'customers#new'
  post '/users' => 'customers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
