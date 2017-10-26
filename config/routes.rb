Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/', to: 'pokemons#capture', as: 'capture'
  patch 'trainers#show', to: 'pokemons#damage', as: 'damage'
  get 'pokemons/new', to: 'pokemons#new', as: 'new'
  post 'pokemons/new', to: 'pokemons#create', as: 'create'
end
