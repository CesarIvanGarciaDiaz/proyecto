Rails.application.routes.draw do
  resources :accounts
  get 'account/index'
resources :categories

  get 'account/new'
  post 'account/new'
  get '/account/movements', to: "movements#index"
  resources :movements
  get 'sessions/new'


  # get 'users/new'

  root 'static_pages#home'
    get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'

    resources :users
    get  '/signup',  to: 'users#new'
    post '/signup',  to: 'users#create'

    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'


end
