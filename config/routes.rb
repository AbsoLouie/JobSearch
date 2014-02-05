JobSearch::Application.routes.draw do

  root to: 'sessions#homepage'

  resources :users
    match '/register', to: 'users#new'

  resources :sessions, only: [:new, :create, :destroy]   
    match '/signin', to: 'sessions#new'
    match '/signout', to: 'sessions#destroy'
    
end
