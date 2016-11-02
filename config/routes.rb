Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch '/capture', to: 'pokemon#capture', as: 'capture' # URI is capture
  patch '/damage', to: 'pokemon#damage', as: 'damage'
  get '/pokemons/new', to:'pokemon#new', as: 'create'
  post '/pokemons', to: 'pokemon#create' # what happens when submitting the form, redirected here when flashing error
end