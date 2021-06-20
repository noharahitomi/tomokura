Rails.application.routes.draw do
  devise_for :users
  get 'spendings/index'
  root to: "spendings#index"
  resource :spendings
end
