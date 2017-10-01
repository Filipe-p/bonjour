Rails.application.routes.draw do

  get 'order_others/index'

  get 'order_others/new'

  get 'order_others/create'

  get 'order_others/edit'

  get 'order_others/update'

  get 'order_others/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home2'

  get 'about',       to: 'pages#about'
  get 'home2',     to: 'pages#home2'
  get 'gallery', to: 'pages#gallery'

  get 'design', to: 'pages#design'
  get 'contacts',     to: 'pages#contacts'

  resources :custom_cakes
  resources :contacts

  resources :cakes do
    collection do
      get 'doughs'
      get 'fillings'
      get 'decorations'
    end
  end

  resources :orders do
    resources :deliveries, only: [:new, :create, :confirmation]
    member do
      get 'others'
      post 'assign_others'
    end
  end
end
