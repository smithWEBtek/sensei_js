Sensei::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :sessions, only: [:create, :destroy]
  root to: "application#index"
  resources :teachers, :teachings, :users
  get '/most_common', :controller => 'teachers', :action => 'most_common'
  devise_scope :user do
    root to: "application#index"
    post '/sessions/user', to: 'devise/sessions#create', via: :post
  end
end
