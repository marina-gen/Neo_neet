Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: 'calendars#index'
  resources :calendars
  resources :schedules, only: [:create, :new, :index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end

  resources :pub_users, only: [:create, :new, :show]
  # root to: 'main_screens#index'
  get '/signup',to: 'admin/users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root to: 'calendars#index'
  resources :calendars
  resources :schedules, only: [:create, :new, :index]
end
