Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get 'users/show_match'
  #post a message on a user's board

  get "/profiles/:id/comments/new", to: 'profiles#new'
  post "/profiles/:id/comments", to: 'profiles#create'
 
  resources :profiles, only: [:create, :new, :show, :edit, :update]
  resources :locations, only: [:index, :show]
  resources :cohorts, only: [:show]
  resources :users, only: [:index, :show, :new, :create]
  resources :messages, only: [:new, :create, :show]
  resources :comments, only: [:new, :create, :show]
end
