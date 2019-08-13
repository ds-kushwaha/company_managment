Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/profile' => 'welcome#user_profile', as: :user_profile
  devise_for :users
  get 'welcome/index'
  resources :countries
  resources :states
  resources :cities 
  resources :companies
  resources :images

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
