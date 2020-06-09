Rails.application.routes.draw do
  devise_for :users

  root to: "recruitments#index"
  resources :users, only: [:edit,:update,:show,:destroy]
  resources :recruitments, only: [:index,:new,:create] do
    collection do
      resources :tops
    end
  end
end
