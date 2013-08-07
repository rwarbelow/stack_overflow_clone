StackOverflowClone::Application.routes.draw do
  #USER ROUTES
  root to: 'pages#index', as: 'homepage'
  resources :users, except: [:index]
  get '/login', to: 'sessions#new'


  #SESSION ROUTES
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
