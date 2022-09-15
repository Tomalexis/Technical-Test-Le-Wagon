Rails.application.routes.draw do
  root to: "pages#home"

  resources :listings do
    resources :bookings
    resources :reservations
    resources :missions, only: [:new, :index, :create, :update, :edit, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
