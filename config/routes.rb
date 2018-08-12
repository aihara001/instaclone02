Rails.application.routes.draw do
  resources :favorites, only: [:create, :destroy]
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :instaclos do
      collection do
      post :confirm
      end
  end
end
