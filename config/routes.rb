Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  get 'about',       to: 'pages#about'
  get 'home2',     to: 'pages#home2'
  get 'gallery', to: 'pages#gallery'

  get 'design', to: 'pages#design'
  get 'contacts',     to: 'pages#contacts'

  resources :custom_cakes
  resources :contacts
  resources :subscribers, only: :create

  resources :cakes do
    collection do
      get 'doughs'
      get 'fillings'
      get 'decorations'
    end
  end

  resources :orders do
    resources :deliveries, only: [:new, :create, :confirmation]
    get 'confirmation', to: 'deliveries#confirmation'

    # ========================
    # tira tudo dos other e assign others para o index e o new/create do order_others
    resources :order_others
    member do
      get 'others'
      post 'assign_others'
    end


  end
end
