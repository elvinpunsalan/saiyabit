Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :customers
  resources :provinces
  resources :models
  resources :devices
  resources :designs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
