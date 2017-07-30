Rails.application.routes.draw do

  get 'search_cake_cake/index'

  get 'search_cake_cake/show'

  get 'search_cake_cake/new'

  get 'search_cake_cake/create'

  get 'search_cake_cake/edit'

  get 'search_cake_cake/update'

  get 'search_cake_cake/destroy'

  get 'search_cake_decoration/index'

  get 'search_cake_decoration/show'

  get 'search_cake_decoration/new'

  get 'search_cake_decoration/create'

  get 'search_cake_decoration/edit'

  get 'search_cake_decoration/update'

  get 'search_cake_decoration/destroy'

  get 'search_cake_filling/index'

  get 'search_cake_filling/show'

  get 'search_cake_filling/new'

  get 'search_cake_filling/create'

  get 'search_cake_filling/edit'

  get 'search_cake_filling/update'

  get 'search_cake_filling/destroy'

  get 'search_cake_dough/index'

  get 'search_cake_dough/show'

  get 'search_cake_dough/new'

  get 'search_cake_dough/create'

  get 'search_cake_dough/edit'

  get 'search_cake_dough/update'

  get 'search_cake_dough/destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'

  get 'about',       to: 'pages#about'
  get 'contacts',     to: 'pages#contacts'
  get 'home2',     to: 'pages#home2'
  resources :orders
  get 'gallery', to: 'pages#gallery'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
