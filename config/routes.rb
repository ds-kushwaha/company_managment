Rails.application.routes.draw do
  get '/profile' => 'welcome#user_profile', as: :user_profile
  devise_for :users
  get 'welcome/index'
  resources :countries
  resources :states
  resources :cities 
  resources :companies
  resources :roles


  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
