Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  resources :cars
  resources :packages, except: %i[index show]
  resources :requests, except: :index

  root 'welcome#index'
  get 'profile/', to: 'users#profile', as: 'profile'
  resource :profile, only: :show
end
