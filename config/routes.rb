Rails.application.routes.draw do
  root to: 'finder#index'

  resources :products, only: [:index, :show]
  resources :customers, only: [:show, :new, :create, :edit, :update]

  get 'phones' => 'finder#phones', as: 'phones'
  get 'tablets' => 'finder#tablets', as: 'tablets'
  get 'laptops' => 'finder#laptops', as: 'laptops'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
