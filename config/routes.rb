Rails.application.routes.draw do
  devise_for :users

  root to: "recruitments#index"

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users, only: [:edit,:update,:show,:destroy]
  resources :dms, only: [:index, :create]
  resources :rooms, only: [:create, :show, :index]
  resources :recruitments, only: [:index,:new,:create] 
  resources :tops
end
