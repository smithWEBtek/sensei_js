  Sensei::Application.routes.draw do
    devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
    resources :sessions, only: [:create, :destroy]
    root to: "application#index"
    resources :teachers, :teachings, :users
  end
