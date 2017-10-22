Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  post "flights/search" => "flights#search"
  resources :flights
  resources :bookings
  post "bookings/new_booking" => "bookings#new_booking"
  post "bookings/search" => "bookings#search"
end
