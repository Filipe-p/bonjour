Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  get 'about',       to: 'pages#about'
  get 'contacts',     to: 'pages#contacts'
  get 'home2',     to: 'pages#home2'
  resources :orders
  get 'gallery', to: 'pages#gallery'

  resources :cakes do
    resources :doughs do
      resources :fillings do
        resources :decorations
      end
    end
  end
end
