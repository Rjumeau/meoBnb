Rails.application.routes.draw do
  devise_for :users
  root to: "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats, only: %i[show new create edit update]
end
