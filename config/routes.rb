Rails.application.routes.draw do
  get 'day/index'
  resources :calendars
  resources :schedules, only: [:create, :new, :index, :show]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end

  root to: 'calendars#index'
  get '/signup',to: 'admin/users#new'

  resources :main_diaries, :except => [:edit, :update]
end
