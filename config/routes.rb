Rails.application.routes.draw do
  resources :accounts
  resources :apextransactions
  devise_for :users
  resources :savings
  resources :loans
  resources :transactions
  resources :clients
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
