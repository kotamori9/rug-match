Rails.application.routes.draw do
  devise_for :users

  root to: "recruitments#index"
  resources :tops, only:[:index]
  resources :recruitments, only: [:index,:new,:create]
  resources :users, only: [:edit,:update,:show,:destroy]
end
