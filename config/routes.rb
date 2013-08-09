StackOverflowClone::Application.routes.draw do

  resources :questions do
    resources :answers
  end

  resources :comments

  resources :users
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/votes', to: 'votes#create', as: 'votes'

  get '/users/:user_id/questions', to: 'user_questions#index', as: 'user_questions'
  get '/users/:user_id/answers', to: 'user_answers#index', as: 'user_answers'

  root to: 'pages#index'
end
