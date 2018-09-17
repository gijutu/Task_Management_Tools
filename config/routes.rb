Rails.application.routes.draw do
  root to:'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks

  resources :tasks do
    member do
      get 'search'
    end
  end
  resources :users, only: [:new,:create,:show]
  resources :users

  resources :sessions, only: [:new, :create, :destroy,:show]

  namespace :admins do
    resources :users
    resources :tasks
    resources :sessions
  end
end
