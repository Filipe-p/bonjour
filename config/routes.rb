Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  get 'about',       to: 'pages#about'
  get 'contacts',     to: 'pages#contacts'
  get 'home2',     to: 'pages#home2'
  resources :orders
  get 'gallery', to: 'pages#gallery'

  resources :cake_dough do
    resources :cake_filling do
      resources :cake_decoration
    end
  end

end
