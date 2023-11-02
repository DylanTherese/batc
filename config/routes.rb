Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :boats do
    resources :bookings, except: :index
  end

  get "my_booking", to: "bookings#my_booking", as: :my_booking
end
