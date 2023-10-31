Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  #get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get '/pets', to: 'pets#index'
  post '/pets', to: 'pets#create'
  get '/pets/:id', to: 'pets#show'
  patch '/pets/:id', to: 'pets#update'
  delete '/pets/:id', to: 'pets#destroy'
  
  get '/owners', to: 'owners#index'
  post '/owners', to: 'owners#create'
  get '/owners/:id', to: 'owners#show'
  get '/owners/:id/pets', to: 'owners#pets'
  patch '/owners/:id', to: 'owners#update'
  delete '/owners/:id', to: 'owners#destroy'
end
