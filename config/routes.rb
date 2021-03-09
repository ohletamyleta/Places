Rails.application.routes.draw do
 
 root 'sessions#index'
 
  resources :pieces
  resources :costumes
  resources :actors
  resources :shows
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
