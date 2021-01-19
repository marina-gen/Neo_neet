Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end

  resources :pub_users, only: [:create, :new, :show]
  # root to: 'main_screens#index'
  get '/signup',to: 'admin/users#new'

  resources :main_diaries, :except => [:edit, :update]
end
