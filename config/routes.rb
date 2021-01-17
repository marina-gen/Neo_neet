Rails.application.routes.draw do
  get 'karimain/index'
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
  root to: 'karimain#index'
  get '/signup',to: 'admin/users#new'
end
