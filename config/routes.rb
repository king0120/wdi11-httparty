Rails.application.routes.draw do
  root to: 'fights#index'
  get 'fights/index'

  get '/starwars', to: 'star_wars#index'
  put '/starwars/:id', to: 'star_wars#update'
  patch '/starwars/:id', to: 'star_wars#update', as: 'update_starwar'

  put '/pokemon/:id', to: 'pokemon#update'
  patch '/pokemon/:id', to: 'pokemon#update', as: 'update_pokemon'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
