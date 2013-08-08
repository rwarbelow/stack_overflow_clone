StackOverflowClone::Application.routes.draw do

  resources :questions

  root to: 'pages#index'
  resources :users
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/users/:user_id/questions', to: 'user_questions#index', as: 'user_questions'
end
