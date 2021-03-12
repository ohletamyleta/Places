Rails.application.routes.draw do
 
 root 'sessions#index'
 
 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'users#new'
 post '/signup' => 'users#create'

  resources :shows do 
    resources :pieces
  end
  
  resources :pieces do 
    resources :costumes, only: [:index, :new, :create]
  end 



  resources :costumes do
    resources :pieces, only: [:index, :new, :create]
  end 
  
  resources :actors
  resources :users
 
end
