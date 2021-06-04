Rails.application.routes.draw do
  get 'spendings/index'
  root to: "spendings#index"
end
