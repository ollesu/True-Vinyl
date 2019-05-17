Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :vinyls do
    collection do
      get "order", to: "vinyls#order"
    end
    resources :purchases, only: [:create]
  end
  # get "users/:id/reviews", to: "reviews#index"
  resources :purchases, only: [:show]
end
