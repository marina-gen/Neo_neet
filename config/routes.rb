Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  # root to: 'main_screens#index'
end
