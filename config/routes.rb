Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  root to: "spendings#index"
  resources :spendings
end
