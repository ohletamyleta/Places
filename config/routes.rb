Rails.application.routes.draw do
 
 root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'

  resources :shows do 
    resources :costumes, only: [:index, :new, :create]
  end
  
  resources :pieces
  resources :costumes
 
  resources :actors do
    resources :costumes, only: [:index, :new, :create]
  end
 
  resources :users
 
end
