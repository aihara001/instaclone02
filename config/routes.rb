Rails.application.routes.draw do
  resources :instaclos do
      collection do
      post :confirm
      end
  end
end
