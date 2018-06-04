# Rails.application.routes.draw do
#   get 'sessions/create'
#   get 'sessions/destroy'
#   get 'home/show'
#   devise_for :users
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   root to: "application#index"
#   end


  Sensei::Application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

    get 'auth/:provider/callback', to: 'sessions#create'
    get 'users/auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'
    get 'sessions/create'
    get 'sessions/destroy'
    resources :sessions, only: [:create, :destroy]

    root to: "application#index"
    resource :teachers, only: [:show]
    resource :teachings, only: [:show]
  end
