Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :packages
  resources :cars
  root 'welcome#index'
  get 'profile/', to: 'users#profile', as: 'profile'
end
