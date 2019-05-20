Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    resources :reviews, only: :index
  end

  resources :vinyls do
    member do
      get "order", to: "vinyls#order"
    end
    resources :purchases, only: [:create]
  end
  # get "users/:id/reviews", to: "reviews#index"
  resources :purchases, only: [:show] do
    resources :reviews, only: :show
  end
end
