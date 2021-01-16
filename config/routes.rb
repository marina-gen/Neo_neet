Rails.application.routes.draw do
  get 'karimain/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/lodout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
  end
  root to: 'karimain#index'
end
