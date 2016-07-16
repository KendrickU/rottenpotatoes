Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'movies#index'
  resources :movies
  match '/movies(/:id(/director))', to: 'movies#show', as: 'search_directors_path', via: [:get, :post]
end
