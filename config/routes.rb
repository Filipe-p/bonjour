Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home2'

  get 'about',       to: 'pages#about'
  get 'contacts',     to: 'pages#contacts'
  get 'home2',     to: 'pages#home2'
  get 'gallery', to: 'pages#gallery'
  get 'design', to: 'pages#design'

  resources :cakes do
    collection do
      get 'doughs'
      get 'fillings'
      get 'decorations'
    end
  end

  resources :orders do
    resources :payments, only: [:new, :create]
    member do
      get 'others'
      post 'assign_others'
    end
    member do
      get 'confirmation'
    end
  end
end
