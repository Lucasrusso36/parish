Rails.application.routes.draw do
  resources :faithfuls
  resources :relationships
  resources :communities
  # resources :sexual_orientations
  # resources :streets
  # resources :neighborhoods
  # resources :cities
  # resources :states
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
