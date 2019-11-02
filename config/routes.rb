Rails.application.routes.draw do
  resources :packages
  root 'welcome#index'
end
