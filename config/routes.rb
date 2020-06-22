Rails.application.routes.draw do
  devise_for :users

  root to: "recruitments#index"
  resources :users, only: [:edit,:update,:show,:destroy]
  resources :dms, only: [:index, :create]
  resources :rooms, only: [:create, :show, :index]
  resources :recruitments, only: [:index,:new,:create] 
  resources :tops
end
