Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  get 'about',       to: 'pages#about'
  get 'contacts',     to: 'pages#contacts'
  get 'home2',     to: 'pages#home2'
  resources :orders
  get 'gallery', to: 'pages#gallery'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
