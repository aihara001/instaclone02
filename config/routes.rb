Rails.application.routes.draw do
  resources :contacts
  resources :favorites, only: [:create, :destroy, :show]
  root 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :instaclos do
      collection do
      post :confirm
      end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
