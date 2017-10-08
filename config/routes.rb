Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#index"
  post "flights/search" => "flights#search"
  resources :flights
  resources :bookings
  post "bookings/new_booking" => "bookings#new_booking"
end
