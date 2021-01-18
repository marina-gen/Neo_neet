Rails.application.routes.draw do
  get 'kari_hiduke/index'
  resources :calendars
  resources :schedules, only: [:create, :new, :index]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end

  root to: 'calendars#index'
  get '/signup',to: 'admin/users#new'
end
