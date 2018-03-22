Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch "/:id", to: "pokemons#capture", as: "capture"
  patch "damage/:id", to: "pokemons#damage", as: "damage"
  get "/new", to: "pokemons#new", as: "new"
  post "/pokemon", to: "pokemons#create", as: "pokemon"
end
