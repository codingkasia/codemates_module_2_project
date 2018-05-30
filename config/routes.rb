Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :locations, only: [:index, :show]
  resources :cohorts, only: [:index, :show]
  resources :users, only: [:index, :show, :new, :create]
end
