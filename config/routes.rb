Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    resources :reviews, only: [:index]
    resources :purchases, only: [:index]
  end

  resources :vinyls do
    member do
      get "order", to: "vinyls#order"
    end
    resources :purchases, only: [:create]
  end
  # get "users/:id/reviews", to: "reviews#index"
  resources :purchases, only: [:show] do
    resources :reviews, only: [:show, :new, :create]
  end

  resources :users, only: [:show] do
    member do
      get "vinyls", to: "users#show_vinyls"
      # get "vinyls", to: ""
    end
  end
  # delete "vinyls/:id", to: "vinyls#destroy"

  # I was trying out some stuff for marking vinyls as sold, please keep it.
  # resources :users, only: [:show] do
  #   member do
  #     get "vinyls/:id", to: "vinyls#mark_as_sold"
  #   end
  # end
end
