Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'calendars#index'
  resources :calendars
  resources :schedules, only: [:create, :new, :index]
end
